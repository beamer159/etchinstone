class_name Encounter extends RefCounted


var id: String
var experience: int


@warning_ignore("unused_parameter")
func resolve(action_set: ActionSet) -> Outcome:
	return Outcome.new()
