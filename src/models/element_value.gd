class_name ElementValue extends RefCounted

enum Element {
	NONE,
	RED,
	YELLOW,
	BLUE,
	GRAY,
}

var element: Element
var value: int

func _init(p_element: Element, p_value: int):
	element = p_element
	value = p_value


func _to_string() -> String:
	return str(ElementValue.Element.keys()[element], " ", value)
