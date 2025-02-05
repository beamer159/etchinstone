class_name Level extends RefCounted


var _items: Array[Variant]:
	set(value):
		_items = value
		max_level = _items.size()

var level: int:
	set(value):
		level = clampi(value, 1, max_level)

var max_level: int


func _init(items: Array, starting_level: int = 1) -> void:
	_items = items
	level = starting_level


func leveled() -> Variant:
	return _items[level - 1]
