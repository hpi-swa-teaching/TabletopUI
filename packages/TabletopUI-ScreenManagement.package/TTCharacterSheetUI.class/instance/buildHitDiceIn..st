build
buildHitDiceIn: aMorph

	self addField: #hitDieTypeString
		at: 20 @ 35
		in: aMorph.
	self addField: #hitDiceRemainingString
		at: 60 @ 35
		in: aMorph.
	self addButton: #applyGainHitDie
		form: self plusButtonForm
		sized: self buttonExtent
		at: 120 @ 30
		in: aMorph.
	self addButton: #applySpendHitDie
		form: self minusButtonForm
		sized: self buttonExtent
		at: 100 @ 30
		in: aMorph.
	self addButton: #applyResetHitDice
		form: self resetButtonForm
		sized: self buttonExtent
		at: 110 @ 50
		in: aMorph