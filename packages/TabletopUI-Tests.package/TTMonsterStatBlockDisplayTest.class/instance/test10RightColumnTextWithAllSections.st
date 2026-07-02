testing
test10RightColumnTextWithAllSections

	| text |
	text := self exhaustiveDisplay rightColumnText asString.
	self
		assert: (text includesSubstring: 'Spellcasting. The lich is an 18th-level spellcaster.');
		assert: (text includesSubstring: 'Paralyzing Touch. Melee Spell Attack: +12 to hit');
		assert: (text includesSubstring:
			'Legendary Actions', self defaultDisplay newline, 'The lich can take 3 legendary actions');
		assert: (text includesSubstring: 'Cantrip. The lich casts a cantrip.')