testing
test09CoreStatsTextWithOptionalFields

	self display monster: TTMonster youngRedDragon.
	self assert: self display coreStatsText asString equals: (self linesTerminated: #(
		'Armor Class: 18'
		'Hit Points: 178'
		'Speed: 40 ft., Climb 40 ft., Fly 80 ft.'
		'Saving Throws: DEX +4, CON +9, WIS +4, CHA +8'
		'Skills: Perception +8, Stealth +4'
		'Senses: Blindsight 30 ft., Darkvision 120 ft., Passive Perception 18'
		'Languages: Common, Draconic'
		'Challenge: 10'
		'Proficiency Bonus: +4'
		'Damage Immunities: Fire'))