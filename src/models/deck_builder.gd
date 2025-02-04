class_name DeckBuilder
extends Object

static func build_deck() -> Array[Level]:
	return [
		_build_power_1(),
		_build_power_2(),
		_build_power_3(),
		_build_power_4(),
		_build_power_5()]

static func _build_power_1() -> Level:
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

static func _build_power_2() -> Level:
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

static func _build_power_3() -> Level:
	return _build_power(
		"Rain of Blood",
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

static func _build_power_4() -> Level:
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

static func _build_power_5() -> Level:
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
					Power.EncounterRef.Circumstance.STORM)),
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

static func _build_power(name: String, element: ElementValue.Element, builders: Array[PowerBuilder]) -> Level:
	var powers: Array[Power] = []
	for i in builders.size():
		powers.append(builders[i].build(name, element, i + 1))
	return Level.new(powers)
