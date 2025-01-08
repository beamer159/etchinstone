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

static func create(
		p_health: int,
		p_initiative: int,
		p_attack: ElementValue,
		p_armor: ElementValue,
		p_experience: int,
		p_ability: Array[Ability]) -> Enemy:
	var enemy := Enemy.new()
	enemy.health = p_health
	enemy.initiative = p_initiative
	enemy.attack = p_attack
	enemy.armor = p_armor
	enemy.experience = p_experience
	enemy.ability = p_ability
	return enemy
