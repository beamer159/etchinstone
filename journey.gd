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

func _init(
		p_move_points: ElementValue,
		p_time_penalty: int,
		p_experience: int,
		p_peril: Array[Peril]):
	move_points = p_move_points
	time_penalty = p_time_penalty
	experience = p_experience
	peril = p_peril
