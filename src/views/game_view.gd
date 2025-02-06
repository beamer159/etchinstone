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
	var leader_i = selection_int / 1000 - 1
	var element_i = selection_int % 1000 / 100 - 1
	var booster_i = selection_int % 100 / 10 - 1
	var unused_i = selection_int % 10 - 1
	var leader := game.hand[leader_i]
	var element := game.hand[element_i]
	var booster := game.hand[booster_i]
	var unused := game.hand[unused_i]
	var action_set = ActionSet.new(
			leader,
			element,
			booster,
			unused,
			%BoostAction.button_pressed)
	var outcome: Outcome = %Encounter.encounter.resolve(action_set)
	print("Leader: ", leader.leveled().name)
	print("Element: ", element.leveled().name)
	print("Booster: ", booster.leveled().name)
	print("Unused: ", unused.leveled().name)
	print()
	print(outcome)
	game.player.sig2.emit(action_set)
