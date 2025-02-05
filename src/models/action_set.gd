class_name ActionSet extends RefCounted


enum BoostTarget {
	INITIATIVE,
	ACTION
}


var leader: Level
var element: Level
var booster: Level
var unused: Level
var used: Array[Level]
var all: Array[Level]
var boost_target: BoostTarget
var boost: int
var initiative: int
var action: Action


func _init(
		p_leader: Level,
		p_element: Level,
		p_booster: Level,
		p_unused: Level,
		p_boost_target: BoostTarget):
	leader = p_leader
	element = p_element
	booster = p_booster
	unused = p_unused
	boost_target = p_boost_target
	boost = 0 if booster == null else booster.leveled().boost
	initiative = 0 if element == null else element.leveled().initiative
	action = (
		leader.leveled().ether_action if ether_action_used()
		else leader.leveled().neutral_action
	)
	used.assign([leader, element, booster].filter(_remove_null))
	all.assign([leader, element, booster, unused].filter(_remove_null))
	for power in [leader, element, booster]:
		if power != null:
			used.append(power)


func _remove_null(variant: Variant) -> bool:
	return variant != null


func ether_action_used() -> bool:
	return leader.leveled().ether_action.value.element == element.leveled().element


func max_soak(attack_element: ElementValue.Element) -> int:
	return [leader, element, booster, unused].reduce(
		func(acc: int, power: Level):
			return acc + (0 if power == null else power.leveled().soak(attack_element)),
		0)
