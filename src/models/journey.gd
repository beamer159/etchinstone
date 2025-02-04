class_name Journey
extends Encounter

enum Peril {
	STEEP,
	TREACHEROUS
}

var move_points: ElementValue
var time_penalty: int
var peril: Array[Peril]

func _init(
		p_move_points: ElementValue,
		p_time_penalty: int,
		p_experience: int,
		p_peril: Array[Peril]):
	move_points = p_move_points
	time_penalty = p_time_penalty
	experience = p_experience
	peril = p_peril


func resolve(action_set: ActionSet) -> Outcome:
	var outcome := Outcome.new()
	
	var move_value = action_set.action.move_value()
	
	@warning_ignore("integer_division")
	var half_move_points := (move_points.value + 1) / 2
	
	if move_value >= move_points.value:
		outcome.experience += experience
	elif move_value >= half_move_points:
		outcome.experience += experience
		outcome.time += time_penalty
	else:
		outcome.time += time_penalty
	
	return outcome
