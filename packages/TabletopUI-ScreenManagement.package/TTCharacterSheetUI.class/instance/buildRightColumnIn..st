build
buildRightColumnIn: aMorph

	Transcript show: 'placeholder values'.
	self addField: #strength sized: 150 @ 70 at: 20 @ 20 in: aMorph. "Traits"
	self addField: #strength sized: 150 @ 70 at: 20 @ 115 in: aMorph. "Ideals"
	self addField: #strength sized: 150 @ 70 at: 20 @ 210 in: aMorph. "Bonds"
	self addField: #strength sized: 150 @ 70 at: 20 @ 305 in: aMorph. "Flaws"
	self addField: #strength sized: 150 @ 155 at: 20 @ 400 in: aMorph. "Appearance"
	self addField: #strength sized: 150 @ 155 at: 20 @ 588 in: aMorph. "Treasure"	