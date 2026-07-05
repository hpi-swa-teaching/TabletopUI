testing
test01CalculateDistanceWithEnd

	| result |
	
	self rulerTool startPosition: (self map convertMapCoordinatesToPixelPosition: 1 @ 1).
	result := self rulerTool calculateDistanceWithEnd: (self map convertMapCoordinatesToPixelPosition: 2 @ 1).
	self assert: result equals: 5.
	result := self rulerTool calculateDistanceWithEnd: (self map convertMapCoordinatesToPixelPosition: 9 @ 10).
	self assert: result equals: 45