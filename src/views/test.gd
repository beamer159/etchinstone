extends Node


var powers := PowerBuilder.build_powers()


var power_view: PowerView:
	set(value):
		if power_view != null:
			remove_child(power_view)
			power_view.queue_free()
		power_view = value
		%Info.text = power_view.power.to_string()
		add_child(power_view)
		move_child(power_view, 0)


var index := 0:
	set(value):
		index = clampi(value, 0, powers.size() - 1)
		power_view = PowerView.create(powers[index].leveled())


func _ready() -> void:
	power_view = PowerView.create(powers[index].leveled())


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("test_next"):
		index += 1
	elif event.is_action_pressed("test_previous"):
		index -= 1
	elif event.is_action_pressed("test_increase"):
		powers[index].level += 1
		power_view = PowerView.create(powers[index].leveled())
	elif event.is_action_pressed("test_decrease"):
		powers[index].level -= 1
		power_view = PowerView.create(powers[index].leveled())
