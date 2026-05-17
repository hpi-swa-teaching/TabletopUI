build
buildLevelBlockIn: aMorph

	self addField: #levelString at: 80 @ 35 in: aMorph.
	Transcript show: 'perception vs. passive perception?'.
	self addField: #perception at: 80 @ 105 in: aMorph.
	self addField: #proficiencyValueString at: 290 @ 35 in: aMorph.