class_name Journey
extends RefCounted

enum Peril {
	STEEP,
	TREACHEROUS
}

var move_points: ElementValue
var time_penalty: int
var experience: int
var peril: Array[Peril]

static func create(
		p_move_points: ElementValue,
		p_time_penalty: int,
		p_experience: int,
		p_peril: Array[Peril]) -> Journey:
	var journey = Journey.new()
	journey.move_points = p_move_points
	journey.time_penalty = p_time_penalty
	journey.experience = p_experience
	journey.peril = p_peril
	return journey
