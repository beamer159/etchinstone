class_name Region
extends RefCounted

var name: String
var enemies: Array[Enemy]
var journeys: Array[Journey]

static func create(
		p_name: String,
		p_enemies: Array[Enemy],
		p_journeys: Array[Journey]) -> Region:
	var region := Region.new()
	region.name = p_name
	region.enemies = p_enemies
	region.journeys = p_journeys
	return region

func get_encounter(reference: PowerLevel):
	var encounter = reference.encounter
	if encounter.type == PowerLevel.Encounter.Type.ENEMY:
		return enemies[encounter.value - 1]
	else:
		return journeys[encounter.value - 1]
