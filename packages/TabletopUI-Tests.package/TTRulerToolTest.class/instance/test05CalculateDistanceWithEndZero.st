testing
test05CalculateDistanceWithEndZero

	| result |
	
	self rulerTool startPosition: (self map convertMapCoordinatesToPixelPosition: 1 @ 1).
	result := self rulerTool calculateDistanceWithEnd: (self map convertMapCoordinatesToPixelPosition: 1 @ 1).
	self assert: result equals: 0