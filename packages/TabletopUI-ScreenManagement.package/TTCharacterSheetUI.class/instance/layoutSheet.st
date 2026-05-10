layout
layoutSheet

	| sheet abilitiesMorph |
	sheet := Morph new
		extent: self sheetExtent;
		color: Color white.
	
	abilitiesMorph := self layoutAbilities.
	sheet addMorph: abilitiesMorph.
	abilitiesMorph position: 440 @ 20.

	sheet position: 300 @ 50.	
	^ sheet