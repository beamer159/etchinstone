class_name Power
extends RefCounted

var name: String
var element: ElementValue.Element
var levels: Array[PowerLevel]
var level: int

var power_level : PowerLevel:
	get:
		return levels[level - 1]

func _init(
		p_name: String,
		p_element: ElementValue.Element,
		p_levels: Array[PowerLevel]):
	name = p_name
	element = p_element
	levels = p_levels
	level = 2
