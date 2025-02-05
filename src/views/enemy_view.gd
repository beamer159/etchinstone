class_name EnemyView extends SpritesheetView


var enemy: Enemy:
	set(value):
		enemy = value
		set_region(SpritesheetLookup.get_encounter_coordinates(enemy))


static func create(p_enemy: Enemy) -> EnemyView:
	var enemy_view := preload("res://src/views/enemy_view.tscn").instantiate()
	enemy_view._create(p_enemy)
	return enemy_view


func _create(p_enemy: Enemy) -> void:
	sheet_size = Vector2i(4, 4)
	enemy = p_enemy
