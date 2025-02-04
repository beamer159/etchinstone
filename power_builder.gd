class_name PowerBuilder
extends RefCounted


var upgrade_cost: int
var armor: ElementValue
var initiative: int
var boost: int
var neutral_action: Action
var ether_action: Action
var encounter: Power.EncounterRef


func _init(
		p_upgrade_cost: int,
		p_armor: ElementValue,
		p_initiative: int,
		p_boost: int,
		p_neutral_action: Action,
		p_ether_action: Action,
		p_encounter: Power.EncounterRef) -> void:
	upgrade_cost = p_upgrade_cost
	armor = p_armor
	initiative = p_initiative
	boost = p_boost
	neutral_action = p_neutral_action
	ether_action = p_ether_action
	encounter = p_encounter


func build(name: String, element: ElementValue.Element, level: int) -> Power:
	return Power.new(
		name,
		level,
		element,
		upgrade_cost,
		armor,
		initiative,
		boost,
		neutral_action,
		ether_action,
		encounter)
