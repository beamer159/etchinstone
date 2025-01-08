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
	
	static func create(
			p_type: Type,
			p_value: ElementValue) -> Action:
		var action := Action.new()
		action.type = p_type
		action.value = p_value
		return action

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
	
	static func create(
			p_type: Type,
			p_value: int,
			p_circumstance: Circumstance) -> Encounter:
		var encounter := Encounter.new()
		encounter.type = p_type
		encounter.value = p_value
		encounter.circumstance = p_circumstance
		return encounter

var upgrade_cost: int
var armor: ElementValue
var initiative: int
var boost: int
var neutral_action: Action
var ether_action: Action
var encounter: Encounter

static func create(
		p_upgrade_cost: int,
		p_armor: ElementValue,
		p_initiative: int,
		p_boost: int,
		p_neutral_action: Action,
		p_ether_action: Action,
		p_encounter: Encounter) -> PowerLevel:
	var level := PowerLevel.new()
	level.upgrade_cost = p_upgrade_cost
	level.armor = p_armor
	level.initiative = p_initiative
	level.boost = p_boost
	level.neutral_action = p_neutral_action
	level.ether_action = p_ether_action
	level.encounter = p_encounter
	return level
