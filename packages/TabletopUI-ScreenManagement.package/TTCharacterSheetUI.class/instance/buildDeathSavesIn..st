build
buildDeathSavesIn: aMorph

	| xOffset xDifference yOffsetRow1 yOffsetRow2 |
	Transcript show: 'we need more containers, and we need help'.
	yOffsetRow1 := 52.
	yOffsetRow2 := 98.
	xOffset := 52.
	xDifference := 47.5.
	
	self addRegularToggle: #inspiration at: (xDifference * 0 + xOffset) @ yOffsetRow1 in: aMorph.
	self addRegularToggle: #inspiration at: (xDifference * 1 + xOffset) @ yOffsetRow1 in: aMorph.
	self addRegularToggle: #inspiration at: (xDifference * 2 + xOffset) @ yOffsetRow1 in: aMorph.
	self addRegularToggle: #inspiration at: (xDifference * 0 + xOffset) @ yOffsetRow2	 in: aMorph.
	self addRegularToggle: #inspiration at: (xDifference * 1 + xOffset) @ yOffsetRow2 in: aMorph.
	self addRegularToggle: #inspiration at: (xDifference * 2 + xOffset) @ yOffsetRow2 in: aMorph.