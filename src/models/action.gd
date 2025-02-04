class_name Action
extends RefCounted


enum Type {
	MOVE,
	ATTACK,
	MOVE_ATTACK
}


var type: Type
var value: ElementValue


func _init(p_type: Type, p_value: ElementValue):
	type = p_type
	value = p_value


func attack_value(armor: ElementValue) -> int:
	if type == Type.MOVE:
		return 1
	
	return value.value - (armor.value if armor.element == value.element else 0)


func move_value() -> int:
	return 1 if type == Type.ATTACK else value.value
