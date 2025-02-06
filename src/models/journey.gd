class_name Journey extends Encounter

enum Peril {
	STEEP,
	TREACHEROUS
}

var move_points: ElementValue
var time_penalty: int
var peril: Array[Peril]

func _init(
		p_id: String,
		p_move_points: ElementValue,
		p_time_penalty: int,
		p_experience: int,
		p_peril: Array[Peril]) -> void:
	id = p_id
	move_points = p_move_points
	time_penalty = p_time_penalty
	experience = p_experience
	peril = p_peril


func resolve(action_set: ActionSet) -> Outcome:
	var outcome := Outcome.new()
	
	outcome.action_value = action_set.move_value(move_points.element)
	
	@warning_ignore("integer_division")
	var half_move_points := (move_points.value + 1) / 2
	
	if outcome.action_value >= move_points.value:
		outcome.result = Outcome.Result.COMPLETE_VICTORY
		outcome.experience += experience
	elif outcome.action_value >= half_move_points:
		outcome.result = Outcome.Result.NARROW_VICTORY
		outcome.experience += experience
		outcome.time += time_penalty
	else:
		outcome.result = Outcome.Result.LOSS
		outcome.time += time_penalty
	
	return outcome
