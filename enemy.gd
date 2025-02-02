class_name Enemy
extends RefCounted

enum Ability {
	POISON,
	RANGED,
	SLOW,
	FREEZE
}

var health: int
var initiative: int
var attack: ElementValue
var armor: ElementValue
var experience: int
var ability: Array[Ability]

func _init(
		p_health: int,
		p_initiative: int,
		p_attack: ElementValue,
		p_armor: ElementValue,
		p_experience: int,
		p_ability: Array[Ability]):
	health = p_health
	initiative = p_initiative
	attack = p_attack
	armor = p_armor
	experience = p_experience
	ability = p_ability
