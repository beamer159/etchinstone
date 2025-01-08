class_name EncounterBuilder
extends Object

static func build_enemies() -> Array:
	return [[
		_build_enemy_1_1(),
		_build_enemy_1_2(),
		_build_enemy_1_3(),
		_build_enemy_1_4()]]

static func build_journeys() -> Array:
	return [[
		_build_journey_1_1(),
		_build_journey_1_2(),
		_build_journey_1_3(),
		_build_journey_1_4()]]

static func _build_enemy_1_1() -> Enemy:
	return Enemy.create(
		7,
		8,
		ElementValue.create(ElementValue.Element.YELLOW, 1),
		ElementValue.create(ElementValue.Element.YELLOW, 1),
		4,
		[])

static func _build_enemy_1_2() -> Enemy:
	return Enemy.create(
		11,
		4,
		ElementValue.create(ElementValue.Element.RED, 2),
		ElementValue.create(ElementValue.Element.RED, 1),
		7,
		[])

static func _build_enemy_1_3() -> Enemy:
	return Enemy.create(
		9,
		6,
		ElementValue.create(ElementValue.Element.BLUE, 2),
		ElementValue.create(ElementValue.Element.BLUE, 2),
		5,
		[])

static func _build_enemy_1_4() -> Enemy:
	return Enemy.create(
		13,
		2,
		ElementValue.create(ElementValue.Element.GRAY, 3),
		ElementValue.create(ElementValue.Element.GRAY, 3),
		8,
		[])

static func _build_journey_1_1() -> Journey:
	return Journey.create(
		ElementValue.create(ElementValue.Element.YELLOW, 12),
		2,
		5,
		[])

static func _build_journey_1_2() -> Journey:
	return Journey.create(
		ElementValue.create(ElementValue.Element.BLUE, 8),
		1,
		3,
		[])

static func _build_journey_1_3() -> Journey:
	return Journey.create(
		ElementValue.create(ElementValue.Element.RED, 11),
		2,
		4,
		[])

static func _build_journey_1_4() -> Journey:
	return Journey.create(
		ElementValue.create(ElementValue.Element.GRAY, 10),
		1,
		3,
		[])
