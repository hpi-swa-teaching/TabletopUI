build
buildSpellcastingBlockIn: aMorph

	self addField: #spellcastingClassName
		at: 18 @ 27
		in: aMorph.
	self addField: #spellAbilityString
		at: 18 @ 97
		in: aMorph.
	self addField: #spellSaveDC
		at: 290 @ 35
		in: aMorph.
	self addField: #spellAttackBonus
		at: 290 @ 105
		in: aMorph.
	