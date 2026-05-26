build
buildHPIn: aMorph

	self addField: #currentHP at: 55 @ 65 in: aMorph.
	self addField: #temporaryHP sized: 50 @ 30 at: 148 @ 110 in: aMorph.
	self addField: #maxHP at: 148 @ 50 in: aMorph.
	self addButton: #applyHealing form: self arrowForm sized: self buttonExtent at: 20 @ 110 in: aMorph.
	self addButton: #applyDamage form: self arrowForm sized: self buttonExtent at: 40 @ 110 in: aMorph.
	self addButton: #applyLongRest form: self arrowForm sized: self buttonExtent at: 20 @ 130 in: aMorph.