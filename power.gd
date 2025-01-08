class_name Power
extends RefCounted

var name: String
var element: ElementValue.Element
var levels: Array[PowerLevel]
var level: int

var power_level : PowerLevel:
	get:
		return levels[level - 1]

static func create(
		p_name: String,
		p_element: ElementValue.Element,
		p_levels: Array[PowerLevel]) -> Power:
	var power := Power.new()
	power.name = p_name
	power.element = p_element
	power.levels = p_levels
	power.level = 2
	return power
