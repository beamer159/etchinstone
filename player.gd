class_name Player
extends RefCounted


static func create_action_set(powers: Array[Level]) -> ActionSet:
	return ActionSet.new(
		powers[0],
		powers[1],
		powers[2],
		powers[3],
		ActionSet.BoostTarget.ACTION)


static func choose_downgrades(
		powers: Array[Level],
		damage: int,
		attack_element: ElementValue.Element) -> Array[Level]:
	return [powers[0], powers[1]]

static func upgrade(powers: Array[Level], experience: int) -> void:
	pass
