class_name ActionSet
extends RefCounted


enum BoostTarget {
	INITIATIVE,
	ACTION
}


var leader: Power
var element: Power
var booster: Power
var boost_target: BoostTarget


var action: PowerLevel.Action:
	get:
		var act: PowerLevel.Action = (
			leader.power_level.ether_action
				if leader.power_level.ether_action.value.element == element.element
		else leader.power_level.neutral_action)
		act.value += 


var initiative: int:
	get: return element.power_level.initiative + (boost if boost_target == BoostTarget.INITIATIVE else 0)


var boost: int:
	get: return booster.power_level.boost


func _init(p_leader: Power, p_element: Power, p_booster: Power):
	leader = p_leader
	element = p_element
	booster = p_booster
