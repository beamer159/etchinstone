class_name Player extends RefCounted


signal sig1
signal sig2


func create_action_set(powers: Array[Level]) -> ActionSet:
	sig1.emit(powers)
	return await sig2


func choose_downgrades(powers: Array[Level], damage: ElementValue,) -> Array[Level]:
	return [powers[0], powers[1]]

func upgrade(powers: Array[Level], experience: int) -> void:
	pass
