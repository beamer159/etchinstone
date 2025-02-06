extends MarginContainer


var game := Game.new()


func _ready() -> void:
	game.player.sig1.connect(_on_player_action_set)
	await game.region_era()


func _on_player_action_set(powers: Array[Level]):
	for power in powers:
		var power_view = PowerView.create(power.leveled())
		%Hand.add_child(power_view)
	%Encounter.encounter = game.encounter


func _on_selection_text_submitted(new_text: String) -> void:
	var selection_int = new_text.to_int()
	var leader_i = selection_int / 100 - 1
	var element_i = selection_int / 10 % 10 - 1
	var booster_i = selection_int % 10 - 1
	print(leader_i, " ", element_i, " ", booster_i)
