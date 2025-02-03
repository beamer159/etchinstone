class_name Region
extends RefCounted

var name: String
var enemies: Array[Enemy]
var journeys: Array[Journey]

func _init(p_name: String, p_enemies: Array[Enemy], p_journeys: Array[Journey]):
	name = p_name
	enemies = p_enemies
	journeys = p_journeys

func get_encounter(ref: Power) -> Encounter:
	var encounter = ref.encounter
	if encounter.type == Power.EncounterRef.Type.ENEMY:
		return enemies[encounter.value - 1]
	else:
		return journeys[encounter.value - 1]
