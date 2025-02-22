class_name Player extends RefCounted


signal action_start
signal action_end
signal downgrade_start
signal downgrade_end


func create_action_set(powers: Array[Level]) -> ActionSet:
	action_start.emit(powers)
	return await action_end


func choose_downgrades(powers: Array[Level], damage: ElementValue) -> Array[Level]:
	downgrade_start.emit(powers, damage)
	return await downgrade_end

func upgrade(powers: Array[Level], experience: int) -> void:
	pass
