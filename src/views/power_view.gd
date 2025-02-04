class_name PowerView
extends TextureRect


var power: Power


static func create(p_power: Power) -> PowerView:
	var power_view := preload("res://src/views/power_view.tscn").instantiate()
	power_view._create(p_power)
	return power_view


func _create(p_power: Power):
	power = p_power
	var file = FileAccess.get_file_as_string("images/powers.json")
	var dic = JSON.parse_string(file)
	var position = dic[power.id]
	var sheet: Texture2D = texture.atlas
	var w = sheet.get_width() / 8
	var h = sheet.get_height() / 8
	texture.region = Rect2(position.x * w, position.y * h, w, h)
	print(w)
	print(h)
