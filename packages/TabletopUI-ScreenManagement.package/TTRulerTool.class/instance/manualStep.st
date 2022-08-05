actions
manualStep
	
	self process: [[
	self startPosition ifNotNil: [
		self distance: (self calculateDistanceWithEnd: self currentCurserPosition).
		self changed: #distance.
		self drawArrowMorph: self currentCurserPosition].
		(Delay forMilliseconds: 20) wait] repeat] fork