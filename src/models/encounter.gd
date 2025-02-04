class_name Encounter
extends RefCounted


var experience: int


@warning_ignore("unused_parameter")
func resolve(action_set: ActionSet) -> Outcome:
	return Outcome.new()
