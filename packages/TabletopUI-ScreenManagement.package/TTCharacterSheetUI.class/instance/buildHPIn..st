build
buildHPIn: aMorph

	self addField: #currentHP sized: 50 @ 30 at: 55 @ 65 in: aMorph.
	self addField: #temporaryHP sized: 50 @ 30 at: 148 @ 110 in: aMorph.
	self addField: #maxHP at: 148 @ 50 in: aMorph.