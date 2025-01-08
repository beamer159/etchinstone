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
		PowerLevel.create(
			2,
			ElementValue.create(ElementValue.Element.NONE, 2),
			2,
			2,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.GRAY, 5)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			3,
			ElementValue.create(ElementValue.Element.NONE, 3),
			3,
			3,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 4)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.GRAY, 7)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			5,
			ElementValue.create(ElementValue.Element.NONE, 3),
			4,
			5,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.GRAY, 9)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.AMBUSH)),
		PowerLevel.create(
			0,
			ElementValue.create(ElementValue.Element.GRAY, 4),
			5,
			6,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.GRAY, 12)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power_2() -> Power:
	return _build_power(
		"Fleet Footed",
		ElementValue.Element.GRAY,
		PowerLevel.create(
			2,
			ElementValue.create(ElementValue.Element.NONE, 2),
			5,
			1,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.YELLOW, 5)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			4,
			ElementValue.create(ElementValue.Element.NONE, 3),
			5,
			2,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.YELLOW, 9)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			6,
			ElementValue.create(ElementValue.Element.YELLOW, 3),
			6,
			4,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 6)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.YELLOW, 11)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			0,
			ElementValue.create(ElementValue.Element.YELLOW, 4),
			7,
			5,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 8)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.YELLOW, 14)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				2,
				PowerLevel.Encounter.Circumstance.NIGHT_TRAVEL)))

static func _build_power_3() -> Power:
	return _build_power(
		"Rain of Blood",
		ElementValue.Element.GRAY,
		PowerLevel.create(
			1,
			ElementValue.create(ElementValue.Element.NONE, 2),
			2,
			1,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.RED, 6)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			3,
			ElementValue.create(ElementValue.Element.NONE, 2),
			3,
			1,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.RED, 8)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			4,
			ElementValue.create(ElementValue.Element.NONE, 3),
			3,
			2,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 6)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.RED, 11)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				4,
				PowerLevel.Encounter.Circumstance.AMBUSH)),
		PowerLevel.create(
			0,
			ElementValue.create(ElementValue.Element.NONE, 5),
			4,
			3,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 7)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.ATTACK,
				ElementValue.create(ElementValue.Element.RED, 14)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power_4() -> Power:
	return _build_power(
		"River Swiftness",
		ElementValue.Element.GRAY,
		PowerLevel.create(
			2,
			ElementValue.create(ElementValue.Element.NONE, 2),
			5,
			1,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 2)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.BLUE, 4)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				1,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			4,
			ElementValue.create(ElementValue.Element.NONE, 2),
			6,
			2,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.BLUE, 6)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			5,
			ElementValue.create(ElementValue.Element.NONE, 5),
			8,
			3,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 5)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.BLUE, 9)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				3,
				PowerLevel.Encounter.Circumstance.STORM)),
		PowerLevel.create(
			0,
			ElementValue.create(ElementValue.Element.BLUE, 5),
			9,
			5,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.NONE, 8)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE,
				ElementValue.create(ElementValue.Element.BLUE, 12)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.JOURNEY,
				4,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power_5() -> Power:
	return _build_power(
		"",
		ElementValue.Element.RED,
		PowerLevel.create(
			2,
			ElementValue.create(ElementValue.Element.NONE, 1),
			2,
			2,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 2)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.GRAY, 3)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.AMBUSH)),
		PowerLevel.create(
			3,
			ElementValue.create(ElementValue.Element.NONE, 2),
			3,
			3,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 3)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.GRAY, 5)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				3,
				PowerLevel.Encounter.Circumstance.NONE)),
		PowerLevel.create(
			4,
			ElementValue.create(ElementValue.Element.NONE, 3),
			4,
			4,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 4)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.GRAY, 7)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				1,
				PowerLevel.Encounter.Circumstance.STORM)),
		PowerLevel.create(
			0,
			ElementValue.create(ElementValue.Element.GRAY, 3),
			4,
			5,
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.NONE, 6)),
			PowerLevel.Action.create(
				PowerLevel.Action.Type.MOVE_ATTACK,
				ElementValue.create(ElementValue.Element.GRAY, 9)),
			PowerLevel.Encounter.create(
				PowerLevel.Encounter.Type.ENEMY,
				2,
				PowerLevel.Encounter.Circumstance.NONE)))

static func _build_power(name: String, element: ElementValue.Element, level1: PowerLevel, level2: PowerLevel, level3: PowerLevel, level4: PowerLevel) -> Power:
	return Power.create(name, element, [level1, level2, level3, level4])
