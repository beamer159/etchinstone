extends MarginContainer


var game := Game.new()
var downgrading : bool
var damage : ElementValue


func _ready() -> void:
	game.player.action_start.connect(_on_player_action)
	game.player.downgrade_start.connect(_on_player_downgrade)
	await game.region_era()


func _on_player_action(powers: Array[Level]):
	for power in powers:
		var power_view = PowerView.create(power.leveled())
		%Hand.add_child(power_view)
	%Encounter.encounter = game.encounter
	%Selection.text = ""
	downgrading = false


func _on_player_downgrade(powers: Array[Level], p_damage: ElementValue):
	print("Downgrade cards")
	damage = p_damage
	%Selection.text = ""
	downgrading = true


func _on_selection_text_submitted(new_text: String) -> void:
	if downgrading:
		_on_downgrade_submitted(new_text.to_int())
	else:
		_on_action_submitted(new_text.to_int())


func _on_action_submitted(entry: int) -> void:
	var leader_i = entry / 1000 - 1
	var element_i = entry % 1000 / 100 - 1
	var booster_i = entry % 100 / 10 - 1
	var unused_i = entry % 10 - 1
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
	game.player.action_end.emit(action_set)


func _on_downgrade_submitted(entry: int) -> void:
	var indexes: Array[int] = []
	while entry > 0:
		indexes.append(entry % 10)
		entry /= 10
	var to_downgrade: Array[Level] = indexes.map(func(i): return game.hand[i])
	var soak = to_downgrade.reduce(
		func(acc: int, l: Level): return acc + _get_soak(l.leveled()), 0)
	print(soak)


func _get_soak(power: Power) -> int:
	return (
		power.armor.value * 2 if power.armor.element == damage.element
		else power.armor.value
	)
