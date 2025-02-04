class_name Game
extends RefCounted


var player := Player.new()
var powers: Array[Level]
var discard: Array[Level] = []


func _init():
	powers = PowerBuilder.build_powers()
	powers.shuffle()


func region_era():
	var regions = Level.new([EncounterBuilder.build_region_1()])
	while regions.level != regions.max_level:
		resolve_region(regions.leveled())
		regions.level += 1
	await resolve_region(regions.leveled())


func dragon_era():
	pass


func resolve_region(region: Region):
	var hand: Array[Level] = []
	while powers.size() >= 5 - hand.size():
		await resolve_round(hand, region)


func resolve_round(hand: Array[Level], region: Region):
	for __ in 4 - hand.size():
		hand.append(powers.pop_back())
	var encounter: Encounter = region.get_encounter(powers.back().leveled())
	var action_set = await player.create_action_set(hand)
	var outcome: Outcome = encounter.resolve(action_set)
	var to_downgrade: Array[Level]
	var to_discard: Array[Level]
	var powers_discard_count = min(powers.size(), outcome.time)
	for __ in powers_discard_count:
		discard.append(powers.pop_back())
	outcome.damage += outcome.time - powers_discard_count
	if action_set.max_soak(outcome.damage_type) < outcome.damage:
		to_downgrade = action_set.all
		to_discard = action_set.all
	else:
		to_downgrade = player.choose_downgrades(action_set.all, outcome.damage, outcome.damage_type)
		to_discard = action_set.used
	for power: Level in to_discard:
		hand.erase(power)
	for power: Level in to_downgrade:
		if power.level > 1:
			power.level -= 1
		elif power == action_set.unused:
			hand.erase(power)
		else:
			to_discard.erase(power)
	var upgradable: Array[Level] = action_set.all.filter(
		func(power: Level): return power not in to_downgrade)
	player.upgrade(upgradable, outcome.experience)
	discard.append_array(to_discard)
