build
buildStatsIn: aMorph

	self addField: #speed
		sized: 50 @ 30
		at: 35 @ 40
		in: aMorph.
	self addField: #initiative
		at: 145 @ 28
		in: aMorph.
	self addField: #initiativeBonus
		sized: 50 @ 30
		at: 145 @ 5
		in: aMorph.
	self addField: #armorClass
		sized: 50 @ 30
		at: 265 @ 40
		in: aMorph.
