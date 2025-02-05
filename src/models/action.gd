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


func attack_value(armors: Array[ElementValue]) -> int:
	var attack = 1 if type == Type.MOVE else value.value
	var valid_armor: Array[ElementValue] = armors.filter(
		func(armor: ElementValue): return armor.element == value.element)
	if not valid_armor.is_empty():
		attack = max(0, attack - valid_armor[0].value)
	return attack


func move_value() -> int:
	return 1 if type == Type.ATTACK else value.value


func _to_string() -> String:
	return str(value, " ", Type.keys()[type])
