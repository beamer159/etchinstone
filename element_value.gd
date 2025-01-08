class_name ElementValue
extends RefCounted

enum Element {
	NONE,
	RED,
	YELLOW,
	BLUE,
	GRAY,
}

var element: Element
var value: int

static func create(p_element: Element, p_value: int) -> ElementValue:
	var element_value := ElementValue.new()
	element_value.element = p_element
	element_value.value = p_value
	return element_value
