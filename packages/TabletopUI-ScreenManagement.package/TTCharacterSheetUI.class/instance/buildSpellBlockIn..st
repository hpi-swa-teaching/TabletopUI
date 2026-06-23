build
buildSpellBlockIn: aMorph

	| yDistance |
	yDistance := 60.
	self buildSpellLevel: 1
		at: 20 @ 20
		in: aMorph
		yDistance: yDistance.
	self buildSpellLevel: 2
		at: 20 @ 315
		in: aMorph
		yDistance: yDistance.
	self buildSpellLevel: 3
		at: 230 @ 20
		in: aMorph
		yDistance: yDistance.
	self buildSpellLevel: 4
		at: 230 @ 315
		in: aMorph
		yDistance: yDistance