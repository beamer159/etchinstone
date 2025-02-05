class_name JourneyView extends SpritesheetView


var journey: Journey:
	set(value):
		journey = value
		set_region(SpritesheetLookup.get_encounter_coordinates(journey))


static func create(p_journey: Journey) -> JourneyView:
	var journey_view := preload("res://src/views/journey_view.tscn").instantiate()
	journey_view._create(p_journey)
	return journey_view


func _create(p_journey: Journey) -> void:
	sheet_size = Vector2i(4, 4)
	journey = p_journey
