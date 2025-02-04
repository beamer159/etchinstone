extends Node


var game := Game.new()


func _ready() -> void:
	game.player.sig1.connect(_on_player_action_set)
	await game.region_era()


func _on_player_action_set(powers: Array[Level]):
	var power_view = PowerView.create(powers[0].leveled())
	add_child(power_view)
