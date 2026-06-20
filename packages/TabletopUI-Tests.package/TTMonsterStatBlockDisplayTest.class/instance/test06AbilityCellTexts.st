testing
test06AbilityCellTexts

	| nl |
	nl := self display newline.
	self
		assert: self display strengthCellText asString equals: 'STR', nl, '8',  nl, '(-1)';
		assert: self display dexterityCellText asString equals: 'DEX', nl, '14', nl, '(+2)';
		assert: self display constitutionCellText asString equals: 'CON', nl, '10', nl, '(+0)';
		assert: self display intelligenceCellText asString equals: 'INT', nl, '10', nl, '(+0)';
		assert: self display wisdomCellText asString equals: 'WIS', nl, '8',  nl, '(-1)';
		assert: self display charismaCellText asString equals: 'CHA', nl, '8',  nl, '(-1)'