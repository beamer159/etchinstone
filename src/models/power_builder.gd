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


func _build(name: String, element: ElementValue.Element, level: int) -> Power:
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


static func build_powers() -> Array[Level]:
	return [
		_build_gray_determined_march(),
		_build_gray_fleet_footed(),
		_build_gray_rain_of_blood(),
		_build_gray_river_swiftness(),
		_build_red_adapt(),
		_build_red_burning_bridges(),
		_build_red_motivated_flight(),
		_build_red_ice_wall(),
		_build_blue_destruction(),
		_build_blue_sword_of_light(),
		_build_blue_brute_force(),
		_build_blue_ice_wall(),
		_build_yellow_rain_of_blood(),
		_build_yellow_fleet_footed(),
		_build_yellow_adapt(),
		_build_yellow_river_swiftness(),
	]

static func _build_gray_determined_march() -> Level:
	return _build_power(
		"Determined March",
		ElementValue.Element.GRAY,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 2),
				2,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.GRAY, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 3),
				3,
				3,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.GRAY, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				5,
				ElementValue.new(ElementValue.Element.NONE, 3),
				4,
				5,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.GRAY, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.AMBUSH)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.GRAY, 4),
				5,
				6,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.GRAY, 12)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_gray_fleet_footed() -> Level:
	return _build_power(
		"Fleet Footed",
		ElementValue.Element.GRAY,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 2),
				5,
				1,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				5,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				6,
				ElementValue.new(ElementValue.Element.YELLOW, 3),
				6,
				4,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 11)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.YELLOW, 4),
				7,
				5,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 8)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 14)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NIGHT_TRAVEL))
		])


static func _build_gray_rain_of_blood() -> Level:
	return _build_power(
		"Rain Of Blood",
		ElementValue.Element.GRAY,
		[
			PowerBuilder.new(
				1,
				ElementValue.new(ElementValue.Element.NONE, 2),
				2,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 6)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 2),
				3,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 8)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				3,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 11)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.AMBUSH)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.NONE, 5),
				4,
				3,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 7)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 14)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_gray_river_swiftness() -> Level:
	return _build_power(
		"River Swiftness",
		ElementValue.Element.GRAY,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 2),
				5,
				1,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 4)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 2),
				6,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 6)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				5,
				ElementValue.new(ElementValue.Element.NONE, 5),
				8,
				3,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.STORM)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.BLUE, 5),
				9,
				5,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 8)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 12)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_red_adapt() -> Level:
	return _build_power(
		"Adapt",
		ElementValue.Element.RED,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 1),
				2,
				2,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 3)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.AMBUSH)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 2),
				3,
				3,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				4,
				4,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.GRAY, 3),
				4,
				5,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_red_burning_bridges() -> Level:
	return _build_power(
		"Burning Bridges",
		ElementValue.Element.RED,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 1),
				1,
				1,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.RED, 4)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.HAZARDOUS_ENVIRONMENT)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 1),
				1,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.RED, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				5,
				ElementValue.new(ElementValue.Element.RED, 2),
				2,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.RED, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.RED, 3),
				3,
				3,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.RED, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_red_motivated_flight() -> Level:
	return _build_power(
		"Motivated Flight",
		ElementValue.Element.RED,
		[
			PowerBuilder.new(
				1,
				ElementValue.new(ElementValue.Element.NONE, 2),
				4,
				1,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 4)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.YELLOW, 2),
				5,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 8)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.YELLOW, 3),
				7,
				3,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 10)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NIGHT_TRAVEL)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.YELLOW, 5),
				9,
				5,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 12)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_red_ice_wall() -> Level:
	return _build_power(
		"Ice Wall",
		ElementValue.Element.RED,
		[
			PowerBuilder.new(
				1,
				ElementValue.new(ElementValue.Element.NONE, 2),
				4,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 3)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.STORM)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.BLUE, 2),
				5,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.BLUE, 4),
				6,
				4,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.BLUE, 6),
				7,
				5,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 10)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_blue_destruction() -> Level:
	return _build_power(
		"Destruction",
		ElementValue.Element.BLUE,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 1),
				1,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 6)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.HAZARDOUS_ENVIRONMENT)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 1),
				1,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 8)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				5,
				ElementValue.new(ElementValue.Element.RED, 2),
				2,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 10)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.RED, 3),
				3,
				3,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 13)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_blue_sword_of_light() -> Level:
	return _build_power(
		"Sword Of Light",
		ElementValue.Element.BLUE,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 1),
				4,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.YELLOW, 4)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 2),
				6,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.YELLOW, 6)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NIGHT_TRAVEL)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				8,
				3,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.YELLOW, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.NONE, 4),
				10,
				4,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.YELLOW, 10)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_blue_brute_force() -> Level:
	return _build_power(
		"Brute Force",
		ElementValue.Element.BLUE,
		[
			PowerBuilder.new(
				1,
				ElementValue.new(ElementValue.Element.NONE, 1),
				1,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 4)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.AMBUSH)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 2),
				1,
				3,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.GRAY, 2),
				2,
				4,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.GRAY, 3),
				3,
				5,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 11)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_blue_ice_wall() -> Level:
	return _build_power(
		"Ice Wall",
		ElementValue.Element.BLUE,
		[
			PowerBuilder.new(
				1,
				ElementValue.new(ElementValue.Element.NONE, 2),
				4,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 3)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.BLUE, 2),
				5,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.STORM)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.BLUE, 4),
				6,
				4,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.BLUE, 6),
				7,
				5,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.BLUE, 10)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_yellow_rain_of_blood() -> Level:
	return _build_power(
		"Rain Of Blood",
		ElementValue.Element.YELLOW,
		[
			PowerBuilder.new(
				1,
				ElementValue.new(ElementValue.Element.NONE, 2),
				2,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 6)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					3,
					Power.EncounterRef.Circumstance.HAZARDOUS_ENVIRONMENT)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 2),
				3,
				1,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 8)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				3,
				2,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 11)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.NONE, 5),
				4,
				3,
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 7)),
				Action.new(
					Action.Type.ATTACK,
					ElementValue.new(ElementValue.Element.RED, 14)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_yellow_fleet_footed() -> Level:
	return _build_power(
		"Fleet Footed",
		ElementValue.Element.YELLOW,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 2),
				5,
				1,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				5,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					3,
					Power.EncounterRef.Circumstance.NIGHT_TRAVEL)),
			PowerBuilder.new(
				6,
				ElementValue.new(ElementValue.Element.YELLOW, 3),
				6,
				4,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 11)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.YELLOW, 4),
				7,
				5,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 8)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.YELLOW, 14)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NONE))
		])


static func _build_yellow_adapt() -> Level:
	return _build_power(
		"Adapt",
		ElementValue.Element.YELLOW,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 1),
				2,
				2,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 3)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					3,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				3,
				ElementValue.new(ElementValue.Element.NONE, 2),
				3,
				3,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 5)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 3),
				4,
				4,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 4)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 7)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.GRAY, 3),
				4,
				5,
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.NONE, 6)),
				Action.new(
					Action.Type.MOVE_ATTACK,
					ElementValue.new(ElementValue.Element.GRAY, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.ENEMY,
					2,
					Power.EncounterRef.Circumstance.HAZARDOUS_ENVIRONMENT))
		])


static func _build_yellow_river_swiftness() -> Level:
	return _build_power(
		"River Swiftness",
		ElementValue.Element.YELLOW,
		[
			PowerBuilder.new(
				2,
				ElementValue.new(ElementValue.Element.NONE, 2),
				5,
				1,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 2)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 4)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				4,
				ElementValue.new(ElementValue.Element.NONE, 2),
				6,
				2,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 3)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 6)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					1,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				5,
				ElementValue.new(ElementValue.Element.NONE, 5),
				8,
				3,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 5)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 9)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					2,
					Power.EncounterRef.Circumstance.NONE)),
			PowerBuilder.new(
				0,
				ElementValue.new(ElementValue.Element.BLUE, 5),
				9,
				5,
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.NONE, 8)),
				Action.new(
					Action.Type.MOVE,
					ElementValue.new(ElementValue.Element.BLUE, 12)),
				Power.EncounterRef.new(
					Power.EncounterRef.Type.JOURNEY,
					4,
					Power.EncounterRef.Circumstance.STORM))
		])


static func _build_power(name: String, element: ElementValue.Element, builders: Array[PowerBuilder]) -> Level:
	var powers: Array[Power] = []
	for i in builders.size():
		powers.append(builders[i]._build(name, element, i + 1))
	return Level.new(powers, 2)
