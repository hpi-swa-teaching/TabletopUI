actions
drawArrowMorph: aPosition

	| adjustedStart adjustedEnd |
	adjustedStart := self positionToCoordinatePos: self startPosition.
	adjustedEnd := self positionToCoordinatePos: aPosition.
	Transcript show: self startPosition.
	Transcript show: ' '.
	Transcript show: adjustedStart.
	Transcript show: '      '.
	self arrowMorph ifNotNil: [arrowMorph delete].
	self arrowMorph: (TransformationMorph new
		color: Color red;
		extent: 5 @ (adjustedStart dist: adjustedEnd);
		position: adjustedStart; "(startPosition bearingToPoint: aPosition)"
		yourself).
	self map addMorph: self arrowMorph.
	self arrowMorph setDirectionFrom: 45 @ 45