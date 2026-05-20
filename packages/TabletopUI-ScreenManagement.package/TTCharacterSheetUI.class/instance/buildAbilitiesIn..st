build
buildAbilitiesIn: aMorph

	| xOffset yOffset yDistance |
	xOffset := 75.
	yOffset := 45.
	yDistance := 143.

	self addAbility: #strength at: xOffset @ (yDistance * 0 + yOffset) in: aMorph.
	self addAbility: #dexterity at: xOffset @ (yDistance * 1 + yOffset) in: aMorph.
	self addAbility: #constitution at: xOffset @ (yDistance * 2 + yOffset) in: aMorph.
	self addAbility: #intelligence at: xOffset @ (yDistance * 3 + yOffset) in: aMorph.
	self addAbility: #wisdom at: xOffset @ (yDistance * 4 + yOffset) in: aMorph.
	self addAbility: #charisma at: xOffset @ (yDistance * 5 + yOffset) in: aMorph.