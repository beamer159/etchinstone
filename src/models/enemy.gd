class_name Enemy extends Encounter


enum Ability {
	POISON,
	RANGED,
	SLOW,
	FREEZE
}


var health: int
var initiative: int
var attack: ElementValue
var armor: Array[ElementValue]
var ability: Array[Ability]

func _init(
		p_id,
		p_health: int,
		p_initiative: int,
		p_attack: ElementValue,
		p_armor: Array[ElementValue],
		p_experience: int,
		p_ability: Array[Ability]) -> void:
	id = p_id
	health = p_health
	initiative = p_initiative
	attack = p_attack
	armor = p_armor
	experience = p_experience
	ability = p_ability


func resolve(action_set: ActionSet) -> Outcome:
	var outcome := Outcome.new()
	outcome.damage = ElementValue.new(attack.element, 0)
	
	if initiative > action_set.initiative:
		outcome.lost_initiative = true
		outcome.damage.value += attack.value
	
	var attack_value := action_set.action.attack_value(armor)
	
	@warning_ignore("integer_division")
	var half_health := (health + 1) / 2
	
	if attack_value >= health:
		outcome.result = Outcome.Result.COMPLETE_VICTORY
		outcome.experience += experience
	elif attack_value >= half_health:
		outcome.result = Outcome.Result.NARROW_VICTORY
		outcome.experience += experience
		outcome.damage.value += attack.value
	else:
		outcome.result = Outcome.Result.LOSS
		outcome.damage.value += attack.value
	
	return outcome
