class_name Outcome extends RefCounted


enum Result {
	COMPLETE_VICTORY,
	NARROW_VICTORY,
	LOSS
}


var initiative: int
var lost_initiative := false
var action_value: int
var result: Result
var experience := 0
var damage: ElementValue
var time := 0

func _to_string() -> String:
	return str(
		"Initiative: ", initiative,
		"\nLost Initiative: ", lost_initiative,
		"\nAction Value: ", action_value,
		"\nResult: ", Result.keys()[result],
		"\nExperience: ", experience,
		"\nDamage: ", damage,
		"\nTime: ", time
	)
