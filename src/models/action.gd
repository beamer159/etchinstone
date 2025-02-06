class_name Action extends RefCounted


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


func attack_value() -> int:
	return 1 if type == Type.MOVE else value.value


func move_value() -> int:
	return 1 if type == Type.ATTACK else value.value


func _to_string() -> String:
	return str(value, " ", Type.keys()[type])
