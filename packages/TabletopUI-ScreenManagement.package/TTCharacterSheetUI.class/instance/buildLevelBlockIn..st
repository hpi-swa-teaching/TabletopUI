build
buildLevelBlockIn: aMorph

	self addField: #levelString
		at: 80 @ 35
		in: aMorph.
	self addField: #passivePerception
		at: 80 @ 105
		in: aMorph.
	self addField: #proficiencyBonusString
		at: 290 @ 35
		in: aMorph.