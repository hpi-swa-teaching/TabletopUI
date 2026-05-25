build
buildSkillsIn: aMorph

	| xOffset yOffset yDistance skills |
	xOffset := 21.
	yOffset := 52.
	yDistance := 31.5.
	skills := TTCharacterSheetData skillNames.
	skills doWithIndex: [:skill :n |
		self addSkill: skill at: xOffset @ (yDistance * (n - 1) + yOffset) in: aMorph].
