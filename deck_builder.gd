class_name DeckBuilder
extends Object

static func build_deck() -> Array[Power]:
	return [
		_build_power_1(),
		_build_power_2(),
		_build_power_3(),
		_build_power_4(),
		_build_power_5()]

static func _build_power_1() -> Power:
	return _build_power(
		"Determined March",
		ElementValue.Element.GRAY,
		PowerLevel.new(
			2,
			ElementValue.new(ElementValue.Element.NONE, 2),
			2,
			2,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.GRAY, 5)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			3,
			ElementValue.new(ElementValue.Element.NONE, 3),
			3,
			3,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 4)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.GRAY, 7)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			5,
			ElementValue.new(ElementValue.Element.NONE, 3),
			4,
			5,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.GRAY, 9)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.AMBUSH)),
		PowerLevel.new(
			0,
			ElementValue.new(ElementValue.Element.GRAY, 4),
			5,
			6,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.GRAY, 12)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power_2() -> Power:
	return _build_power(
		"Fleet Footed",
		ElementValue.Element.GRAY,
		PowerLevel.new(
			2,
			ElementValue.new(ElementValue.Element.NONE, 2),
			5,
			1,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.YELLOW, 5)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			4,
			ElementValue.new(ElementValue.Element.NONE, 3),
			5,
			2,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.YELLOW, 9)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			6,
			ElementValue.new(ElementValue.Element.YELLOW, 3),
			6,
			4,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 6)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.YELLOW, 11)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			0,
			ElementValue.new(ElementValue.Element.YELLOW, 4),
			7,
			5,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 8)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.YELLOW, 14)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				2,
				PowerLevel.Encounter.Circumstance.NIGHT_TRAVEL)))

static func _build_power_3() -> Power:
	return _build_power(
		"Rain of Blood",
		ElementValue.Element.GRAY,
		PowerLevel.new(
			1,
			ElementValue.new(ElementValue.Element.NONE, 2),
			2,
			1,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.RED, 6)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			3,
			ElementValue.new(ElementValue.Element.NONE, 2),
			3,
			1,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.RED, 8)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			4,
			ElementValue.new(ElementValue.Element.NONE, 3),
			3,
			2,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 6)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.RED, 11)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.AMBUSH)),
		PowerLevel.new(
			0,
			ElementValue.new(ElementValue.Element.NONE, 5),
			4,
			3,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 7)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.new(ElementValue.Element.RED, 14)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power_4() -> Power:
	return _build_power(
		"River Swiftness",
		ElementValue.Element.GRAY,
		PowerLevel.new(
			2,
			ElementValue.new(ElementValue.Element.NONE, 2),
			5,
			1,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 2)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.BLUE, 4)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			4,
			ElementValue.new(ElementValue.Element.NONE, 2),
			6,
			2,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.BLUE, 6)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			5,
			ElementValue.new(ElementValue.Element.NONE, 5),
			8,
			3,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.BLUE, 9)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				3,
				PowerLevel.Encounter.Circumstance.STORM)),
		PowerLevel.new(
			0,
			ElementValue.new(ElementValue.Element.BLUE, 5),
			9,
			5,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.NONE, 8)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE,
				ElementValue.new(ElementValue.Element.BLUE, 12)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.JOURNEY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power_5() -> Power:
	return _build_power(
		"",
		ElementValue.Element.RED,
		PowerLevel.new(
			2,
			ElementValue.new(ElementValue.Element.NONE, 1),
			2,
			2,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 2)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.GRAY, 3)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.AMBUSH)),
		PowerLevel.new(
			3,
			ElementValue.new(ElementValue.Element.NONE, 2),
			3,
			3,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.GRAY, 5)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				3,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.new(
			4,
			ElementValue.new(ElementValue.Element.NONE, 3),
			4,
			4,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 4)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.GRAY, 7)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				1,
				PowerLevel.Encounter.Circumstance.STORM)),
		PowerLevel.new(
			0,
			ElementValue.new(ElementValue.Element.GRAY, 3),
			4,
			5,
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.NONE, 6)),
			PowerLevel.Action.new(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.new(ElementValue.Element.GRAY, 9)),
			PowerLevel.Encounter.new(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power(name: String, element: ElementValue.Element, level1: PowerLevel, level2: PowerLevel, level3: PowerLevel, level4: PowerLevel) -> Power:
	return Power.new(name, element, [level1, level2, level3, level4])
