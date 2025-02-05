class_name SpritesheetView extends TextureRect


@export var sheet_size: Vector2i


func set_region(coordinates: Vector2i) -> void:
	@warning_ignore("integer_division")
	var width = texture.atlas.get_width() / sheet_size.x
	@warning_ignore("integer_division")
	var height = texture.atlas.get_height() / sheet_size.y
	texture.region = Rect2(
		coordinates.x * width,
		coordinates.y * height,
		width,
		height)
