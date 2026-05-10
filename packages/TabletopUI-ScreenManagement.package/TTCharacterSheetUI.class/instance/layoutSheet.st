layout
layoutSheet

	| sheet |
	sheet := Morph new
		extent: self sheetExtent;
		color: Color white;
		sticky: true.

	self add: self layoutName at: 20 @ 0 to: sheet.
	self add: self layoutPerception at: 20 @ 65 to: sheet.
	self add: self layoutProficiencyBonus at: 230 @ 0 to: sheet.
	self add: self layoutInspiration at: 230 @ 65 to: sheet.
	self add: self layoutStats at: 50 @ 140 to: sheet.
	self add: self layoutSkills at: 20 @ 250 to: sheet.
	self add: self layoutHP at: 220 @ 260 to: sheet.
	self add: self layoutSavingThrows at: 230 @ 450 to: sheet.
	self add: self layoutHitDice at: 230 @ 660 to: sheet.
	self add: self layoutDeathSaves at: 230 @ 755 to: sheet.
	self add: self layoutAbilities at: 440 @ 20 to: sheet.


	sheet position: 300 @ 50.	
	^ sheet