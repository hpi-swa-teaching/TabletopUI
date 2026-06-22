build
buildHPIn: aMorph

	self addField: #currentHP
		at: 55 @ 65
		in: aMorph.
	self addEditableField: #temporaryHP
		sized: 50 @ 30
		at: 148 @ 110
		in: aMorph.
	self addField: #maxHP
		at: 148 @ 50
		in: aMorph.
	self addButton: #applyHealing
		form: self plusButtonForm
		sized: self buttonExtent
		at: 50 @ 140
		in: aMorph.
	self addButton: #applyDamage
		form: self minusButtonForm
		sized: self buttonExtent
		at: 30 @ 140
		in: aMorph.
	self addButton: #applyRest
		form: self restButtonForm
		sized: self buttonExtent
		at: 80 @ 140
		in: aMorph.