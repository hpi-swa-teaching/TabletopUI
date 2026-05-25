build
buildSpellcastingBlockIn: aMorph

	Transcript show: 'huge amount of placeholders'.
	self addField: #levelString at: 80 @ 35 in: aMorph. "Spellcasting Class"
	self addField: #perception at: 80 @ 105 in: aMorph. "Spellcasting Ability"
	self addField: #proficiencyBonusString at: 290 @ 35 in: aMorph. "Spell Save DC"
	self addField: #proficiencyBonusString at: 290 @ 105 in: aMorph. "Spell Attack Bonus"
	