class_name Game extends RefCounted


var player := Player.new()
var powers: Array[Level]
var hand: Array[Level] = []
var discard: Array[Level] = []
var encounter: Encounter


func _init():
	powers = PowerBuilder.build_powers()
	powers.shuffle()


func region_era():
	var regions = EncounterBuilder.build_regions()
	while regions.level != regions.max_level:
		await resolve_region(regions.leveled())
		regions.level += 1
	await resolve_region(regions.leveled())


func dragon_era():
	pass


func resolve_region(region: Region):
	while powers.size() >= 5 - hand.size():
		await resolve_round(region)


func resolve_round(region: Region):
	for __ in 4 - hand.size():
		hand.append(powers.pop_back())
	encounter = region.get_encounter(powers.back().leveled())
	var action_set = await player.create_action_set(hand)
	var outcome: Outcome = encounter.resolve(action_set)
	var to_downgrade: Array[Level]
	var to_discard: Array[Level]
	var powers_discard_count = min(powers.size(), outcome.time)
	for __ in powers_discard_count:
		discard.append(powers.pop_back())
	outcome.damage.value += outcome.time - powers_discard_count
	if action_set.max_soak(outcome.damage.element) < outcome.damage.value:
		to_downgrade = action_set.all
		to_discard = action_set.all
	elif outcome.damage.value > 0:
		to_downgrade = await player.choose_downgrades(action_set.all, outcome.damage)
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
