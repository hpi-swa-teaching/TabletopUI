build
buildStatsIn: aMorph

	self addEditableField: #speed
		sized: 50 @ 30
		at: 35 @ 40
		in: aMorph.
	self addField: #initiative
		at: 145 @ 18
		in: aMorph.
	self addField: #armorClass
		at: 265 @ 40
		in: aMorph.
