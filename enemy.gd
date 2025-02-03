class_name Enemy
extends Encounter


enum Ability {
	POISON,
	RANGED,
	SLOW,
	FREEZE
}


var health: int
var initiative: int
var attack: ElementValue
var armor: ElementValue
var ability: Array[Ability]

func _init(
		p_health: int,
		p_initiative: int,
		p_attack: ElementValue,
		p_armor: ElementValue,
		p_experience: int,
		p_ability: Array[Ability]):
	health = p_health
	initiative = p_initiative
	attack = p_attack
	armor = p_armor
	experience = p_experience
	ability = p_ability


func resolve(action_set: ActionSet) -> Outcome:
	var outcome := Outcome.new()
	outcome.damage_type = attack.element
	
	if initiative > action_set.initiative:
		outcome.damage += attack.value
	
	var attack_value := action_set.action.attack_value(armor)
	
	@warning_ignore("integer_division")
	var half_health := (health + 1) / 2
	
	if attack_value >= health:
		outcome.experience += experience
	elif attack_value >= half_health:
		outcome.experience += experience
		outcome.damage += attack.value
	else:
		outcome.damage += attack.value
	
	return outcome
