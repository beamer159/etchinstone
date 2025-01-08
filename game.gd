extends Node

func _ready() -> void:
	var powers := DeckBuilder.build_deck()
	powers.shuffle()
	var hand = range(4).map(func(_i): return powers.pop_back())
	var enemies = EncounterBuilder.build_enemies()
	var journeies = EncounterBuilder.build_journeys()
