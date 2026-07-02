testing
test06AbilityCellTexts

	| nl |
	nl := self defaultDisplay newline.
	self
		assert: self defaultDisplay strengthCellText asString equals: 'STR', nl, '8',  nl, '(-1)';
		assert: self defaultDisplay dexterityCellText asString equals: 'DEX', nl, '14', nl, '(+2)';
		assert: self defaultDisplay constitutionCellText asString equals: 'CON', nl, '10', nl, '(+0)';
		assert: self defaultDisplay intelligenceCellText asString equals: 'INT', nl, '10', nl, '(+0)';
		assert: self defaultDisplay wisdomCellText asString equals: 'WIS', nl, '8',  nl, '(-1)';
		assert: self defaultDisplay charismaCellText asString equals: 'CHA', nl, '8',  nl, '(-1)'