build
buildHPIn: aMorph

	self addField: #currentHP editable: true at: 55 @ 65 in: aMorph.
	self addField: #temporaryHP editable: true at: 148 @ 110 in: aMorph.
	self addField: #maxHP editable: false at: 148 @ 50 in: aMorph.