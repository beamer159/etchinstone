class_name PowerView extends SpritesheetView


var power: Power:
	set(value):
		power = value
		set_region(SpritesheetLookup.get_power_coordinates(power))


static func create(p_power: Power) -> PowerView:
	var power_view := preload("res://src/views/power_view.tscn").instantiate()
	power_view._create(p_power)
	return power_view


func _create(p_power: Power) -> void:
	sheet_size = Vector2i(8, 8)
	power = p_power
