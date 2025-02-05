extends Node


var powers: Dictionary
var encounters: Dictionary


func _ready() -> void:
	powers = JSON.parse_string(
		FileAccess.get_file_as_string("res://images/powers.json"))
	encounters = JSON.parse_string(
		FileAccess.get_file_as_string("res://images/encounters.json"))


func get_power_coordinates(power: Power) -> Vector2i:
	var power_dictionary = powers[power.id]
	return Vector2i(power_dictionary.x, power_dictionary.y)


func get_encounter_coordinates(encounter: Encounter) -> Vector2i:
	var encounter_dictionary = encounters[encounter.id]
	return Vector2i(encounter_dictionary.x, encounter_dictionary.y)
