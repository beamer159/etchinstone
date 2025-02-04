class_name Power
extends RefCounted


class EncounterRef:
	enum Type {
		ENEMY,
		JOURNEY
	}
	
	
	enum Circumstance {
		NONE,
		NIGHT_TRAVEL,
		STORM,
		HAZARDOUS_ENVIRONMENT,
		AMBUSH
	}
	
	
	var type: Type
	var value: int
	var circumstance: Circumstance
	
	
	func _init(p_type: Type, p_value: int, p_circumstance: Circumstance):
		type = p_type
		value = p_value
		circumstance = p_circumstance


var name: String
var level: int
var element: ElementValue.Element
var id: String
var upgrade_cost: int
var armor: ElementValue
var initiative: int
var boost: int
var neutral_action: Action
var ether_action: Action
var encounter: EncounterRef


func _init(
		p_name: String,
		p_level: int,
		p_element: ElementValue.Element,
		p_upgrade_cost: int,
		p_armor: ElementValue,
		p_initiative: int,
		p_boost: int,
		p_neutral_action: Action,
		p_ether_action: Action,
		p_encounter: EncounterRef):
	name = p_name
	level = p_level
	element = p_element
	upgrade_cost = p_upgrade_cost
	armor = p_armor
	initiative = p_initiative
	boost = p_boost
	neutral_action = p_neutral_action
	ether_action = p_ether_action
	encounter = p_encounter
	id = str(ElementValue.Element.keys()[element].to_lower(), name, level)


func soak(attack_element: ElementValue.Element) -> int:
	if armor.element == ElementValue.Element.NONE:
		return armor.value
	
	return armor.value * 2 if armor.element == attack_element else armor.element
