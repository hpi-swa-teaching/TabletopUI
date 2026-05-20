build
buildSavingThrowsIn: aMorph
	
	| xOffset yOffset yDistance savingThrows |
	xOffset := 20.
	yOffset := 37.
	yDistance := 23.3.
	savingThrows := #(#strengthSave #dexteritySave #constitutionSave #intelligenceSave #wisdomSave #charismaSave).
	savingThrows doWithIndex: [:savingThrow :n |
		self addSkill: savingThrow at: xOffset @ (yDistance * (n - 1) + yOffset) in: aMorph].
