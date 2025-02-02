extends Node

func _ready() -> void:
	var powers := DeckBuilder.build_deck()
	powers.shuffle()
	var hand := range(4).map(func(_i): return powers.pop_back())
	var region := EncounterBuilder.build_region_1()
	var reference: PowerLevel = powers.pop_back().power_level
	var encounter = region.get_encounter(reference)
	if encounter is Enemy:
		print("Enemy")
	elif encounter is Journey:
		print("Journey")
