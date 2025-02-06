class_name Outcome extends RefCounted


enum Result {
	COMPLETE_VICTORY,
	NARROW_VICTORY,
	LOSS
}


var result: Result
var lost_initiative := false
var experience := 0
var damage: ElementValue
var time := 0

func _to_string() -> String:
	return str(
		"Result: ", Result.keys()[result],
		"\nLost Initiative: ", lost_initiative,
		"\nExperience: ", experience,
		"\nDamage: ", damage,
		"\nTime: ", time
	)
