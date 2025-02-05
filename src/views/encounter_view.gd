class_name EncounterView extends MarginContainer


var encounter: Encounter


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var file = FileAccess.get_file_as_string("res://images/encounters.json")
	var dic = JSON.parse_string(file)
	var coordinates = dic[power.id]
	var sheet: Texture2D = texture.atlas
	@warning_ignore("integer_division")
	var width = sheet.get_width() / 8
	@warning_ignore("integer_division")
	var height = sheet.get_height() / 8
	texture.region = Rect2(coordinates.x * width, coordinates.y * height, width, height)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
