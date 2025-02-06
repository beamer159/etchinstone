class_name EncounterView extends SpritesheetView


var encounter: Encounter:
	set(value):
		encounter = value
		texture.atlas = (
			preload("res://images/enemies.tres") if encounter is Enemy
			else preload("res://images/journies.tres"))
		set_region(SpritesheetLookup.get_encounter_coordinates(encounter))


static func create(p_encounter: Encounter) -> EncounterView:
	var encounter_view := preload("res://src/views/encounter_view.tscn").instantiate()
	encounter_view._create(p_encounter)
	return encounter_view


func _create(p_encounter: Enemy) -> void:
	sheet_size = Vector2i(4, 4)
	encounter = p_encounter
