actions
drawArrowMorph: aPosition

	| adjustedStart adjustedEnd |
	
	adjustedStart := self positionToCoordinatePos: self startPosition.
	adjustedEnd := self positionToCoordinatePos: aPosition.
	self arrowMorph ifNotNil: [self arrowMorph delete].
	self arrowMorph: (LineMorph
		from: adjustedStart
		to: adjustedEnd
		color: Color red
		width: 5).
	self map addMorph: self arrowMorph