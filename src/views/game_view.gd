extends MarginContainer


var game := Game.new()


func _ready() -> void:
	game.player.sig1.connect(_on_player_action_set)
	await game.region_era()


func _on_player_action_set(powers: Array[Level]):
	for power in powers:
		var power_view = PowerView.create(power.leveled())
		%Hand.add_child(power_view)
	%Enemy.enemy = game.encounter
