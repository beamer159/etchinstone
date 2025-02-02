class_name PowerLevel
extends RefCounted

class Action:
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

class Encounter:
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

var upgrade_cost: int
var armor: ElementValue
var initiative: int
var boost: int
var neutral_action: Action
var ether_action: Action
var encounter: Encounter

func _init(
		p_upgrade_cost: int,
		p_armor: ElementValue,
		p_initiative: int,
		p_boost: int,
		p_neutral_action: Action,
		p_ether_action: Action,
		p_encounter: Encounter):
	upgrade_cost = p_upgrade_cost
	armor = p_armor
	initiative = p_initiative
	boost = p_boost
	neutral_action = p_neutral_action
	ether_action = p_ether_action
	encounter = p_encounter
