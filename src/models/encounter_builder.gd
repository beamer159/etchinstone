class_name EncounterBuilder


static func build_regions() -> Level:
	return Level.new(
		[
			Region.new(
				"Jade Mountains",
				[
					_build_enemy_1_1(),
					_build_enemy_1_2(),
					_build_enemy_1_3(),
					_build_enemy_1_4()],
				[
					_build_journey_1_1(),
					_build_journey_1_2(),
					_build_journey_1_3(),
					_build_journey_1_4()
				]
			),
			Region.new(
				"Living Marshes",
				[
					_build_enemy_2_1(),
					_build_enemy_2_2(),
					_build_enemy_2_3(),
					_build_enemy_2_4()],
				[
					_build_journey_2_1(),
					_build_journey_2_2(),
					_build_journey_2_3(),
					_build_journey_2_4()
				]
			),
			Region.new(
				"Burning Basin",
				[
					_build_enemy_3_1(),
					_build_enemy_3_2(),
					_build_enemy_3_3(),
					_build_enemy_3_4()],
				[
					_build_journey_3_1(),
					_build_journey_3_2(),
					_build_journey_3_3(),
					_build_journey_3_4()
				]
			),
			Region.new(
				"Forests Of Gath",
				[
					_build_enemy_4_1(),
					_build_enemy_4_2(),
					_build_enemy_4_3(),
					_build_enemy_4_4()],
				[
					_build_journey_4_1(),
					_build_journey_4_2(),
					_build_journey_4_3(),
					_build_journey_4_4()
				]
			)
		]
	)


static func _build_enemy_1_1() -> Enemy:
	return Enemy.new(
		"11",
		7,
		8,
		ElementValue.new(ElementValue.Element.YELLOW, 1),
		[ElementValue.new(ElementValue.Element.YELLOW, 1)],
		4,
		[])


static func _build_enemy_1_2() -> Enemy:
	return Enemy.new(
		"12",
		11,
		4,
		ElementValue.new(ElementValue.Element.RED, 2),
		[ElementValue.new(ElementValue.Element.RED, 1)],
		7,
		[])


static func _build_enemy_1_3() -> Enemy:
	return Enemy.new(
		"13",
		9,
		6,
		ElementValue.new(ElementValue.Element.BLUE, 2),
		[ElementValue.new(ElementValue.Element.BLUE, 2)],
		5,
		[])


static func _build_enemy_1_4() -> Enemy:
	return Enemy.new(
		"14",
		13,
		2,
		ElementValue.new(ElementValue.Element.GRAY, 3),
		[ElementValue.new(ElementValue.Element.GRAY, 3)],
		8,
		[])


static func _build_enemy_2_1() -> Enemy:
	return Enemy.new(
		"21",
		9,
		6,
		ElementValue.new(ElementValue.Element.GRAY, 2),
		[ElementValue.new(ElementValue.Element.GRAY, 1)],
		5,
		[Enemy.Ability.RANGED])


static func _build_enemy_2_2() -> Enemy:
	return Enemy.new(
		"22",
		10,
		8,
		ElementValue.new(ElementValue.Element.YELLOW, 2),
		[ElementValue.new(ElementValue.Element.YELLOW, 1)],
		4,
		[])


static func _build_enemy_2_3() -> Enemy:
	return Enemy.new(
		"23",
		15,
		2,
		ElementValue.new(ElementValue.Element.RED, 4),
		[ElementValue.new(ElementValue.Element.RED, 3)],
		8,
		[Enemy.Ability.SLOW])


static func _build_enemy_2_4() -> Enemy:
	return Enemy.new(
		"24",
		13,
		5,
		ElementValue.new(ElementValue.Element.BLUE, 3),
		[ElementValue.new(ElementValue.Element.BLUE, 2)],
		7,
		[Enemy.Ability.FREEZE])


static func _build_enemy_3_1() -> Enemy:
	return Enemy.new(
		"31",
		17,
		5,
		ElementValue.new(ElementValue.Element.GRAY, 3),
		[ElementValue.new(ElementValue.Element.GRAY, 3)],
		9,
		[])


static func _build_enemy_3_2() -> Enemy:
	return Enemy.new(
		"32",
		14,
		4,
		ElementValue.new(ElementValue.Element.BLUE, 3),
		[ElementValue.new(ElementValue.Element.BLUE, 3)],
		8,
		[Enemy.Ability.SLOW])


static func _build_enemy_3_3() -> Enemy:
	return Enemy.new(
		"33",
		11,
		9,
		ElementValue.new(ElementValue.Element.RED, 2),
		[ElementValue.new(ElementValue.Element.RED, 2)],
		7,
		[Enemy.Ability.POISON])


static func _build_enemy_3_4() -> Enemy:
	return Enemy.new(
		"34",
		9,
		7,
		ElementValue.new(ElementValue.Element.YELLOW, 2),
		[ElementValue.new(ElementValue.Element.YELLOW, 2)],
		5,
		[Enemy.Ability.RANGED])


static func _build_enemy_4_1() -> Enemy:
	return Enemy.new(
		"41",
		13,
		6,
		ElementValue.new(ElementValue.Element.GRAY, 2),
		[
			ElementValue.new(ElementValue.Element.GRAY, 3),
			ElementValue.new(ElementValue.Element.BLUE, 2)
		],
		7,
		[Enemy.Ability.POISON])


static func _build_enemy_4_2() -> Enemy:
	return Enemy.new(
		"42",
		9,
		10,
		ElementValue.new(ElementValue.Element.RED, 3),
		[ElementValue.new(ElementValue.Element.RED, 1)],
		5,
		[Enemy.Ability.RANGED])


static func _build_enemy_4_3() -> Enemy:
	return Enemy.new(
		"43",
		14,
		8,
		ElementValue.new(ElementValue.Element.YELLOW, 4),
		[
			ElementValue.new(ElementValue.Element.YELLOW, 2),
			ElementValue.new(ElementValue.Element.RED, 2)
		],
		8,
		[Enemy.Ability.FREEZE])


static func _build_enemy_4_4() -> Enemy:
	return Enemy.new(
		"44",
		17,
		7,
		ElementValue.new(ElementValue.Element.BLUE, 5),
		[
			ElementValue.new(ElementValue.Element.BLUE, 3),
			ElementValue.new(ElementValue.Element.GRAY, 2)
		],
		9,
		[])


static func _build_journey_1_1() -> Journey:
	return Journey.new(
		"11",
		ElementValue.new(ElementValue.Element.YELLOW, 12),
		2,
		5,
		[])


static func _build_journey_1_2() -> Journey:
	return Journey.new(
		"12",
		ElementValue.new(ElementValue.Element.BLUE, 8),
		1,
		3,
		[])


static func _build_journey_1_3() -> Journey:
	return Journey.new(
		"13",
		ElementValue.new(ElementValue.Element.RED, 11),
		2,
		4,
		[])


static func _build_journey_1_4() -> Journey:
	return Journey.new(
		"14",
		ElementValue.new(ElementValue.Element.GRAY, 10),
		1,
		3,
		[])


static func _build_journey_2_1() -> Journey:
	return Journey.new(
		"21",
		ElementValue.new(ElementValue.Element.RED, 10),
		2,
		4,
		[Journey.Peril.TREACHEROUS])


static func _build_journey_2_2() -> Journey:
	return Journey.new(
		"22",
		ElementValue.new(ElementValue.Element.BLUE, 13),
		2,
		7,
		[])


static func _build_journey_2_3() -> Journey:
	return Journey.new(
		"23",
		ElementValue.new(ElementValue.Element.YELLOW, 11),
		3,
		5,
		[])


static func _build_journey_2_4() -> Journey:
	return Journey.new(
		"24",
		ElementValue.new(ElementValue.Element.GRAY, 9),
		2,
		4,
		[Journey.Peril.STEEP])


static func _build_journey_3_1() -> Journey:
	return Journey.new(
		"31",
		ElementValue.new(ElementValue.Element.BLUE, 14),
		2,
		7,
		[Journey.Peril.STEEP])


static func _build_journey_3_2() -> Journey:
	return Journey.new(
		"32",
		ElementValue.new(ElementValue.Element.YELLOW, 12),
		3,
		6,
		[])


static func _build_journey_3_3() -> Journey:
	return Journey.new(
		"33",
		ElementValue.new(ElementValue.Element.RED, 10),
		3,
		5,
		[Journey.Peril.TREACHEROUS])


static func _build_journey_3_4() -> Journey:
	return Journey.new(
		"34",
		ElementValue.new(ElementValue.Element.GRAY, 11),
		2,
		5,
		[])


static func _build_journey_4_1() -> Journey:
	return Journey.new(
		"41",
		ElementValue.new(ElementValue.Element.BLUE, 14),
		2,
		7,
		[Journey.Peril.TREACHEROUS])


static func _build_journey_4_2() -> Journey:
	return Journey.new(
		"42",
		ElementValue.new(ElementValue.Element.GRAY, 13),
		3,
		6,
		[])


static func _build_journey_4_3() -> Journey:
	return Journey.new(
		"43",
		ElementValue.new(ElementValue.Element.RED, 12),
		2,
		5,
		[])


static func _build_journey_4_4() -> Journey:
	return Journey.new(
		"44",
		ElementValue.new(ElementValue.Element.YELLOW, 11),
		3,
		5,
		[])
