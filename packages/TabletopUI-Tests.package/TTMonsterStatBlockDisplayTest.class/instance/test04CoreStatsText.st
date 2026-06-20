testing
test04CoreStatsText

	self assert: self display coreStatsText asString equals: (self linesTerminated: #(
		'Armor Class: 15'
		'Hit Points: 7'
		'Speed: 30 ft.'
		'Skills: Stealth +6'
		'Senses: Darkvision 60 ft., Passive Perception 9'
		'Languages: Common, Goblin'
		'Challenge: 1/4'))