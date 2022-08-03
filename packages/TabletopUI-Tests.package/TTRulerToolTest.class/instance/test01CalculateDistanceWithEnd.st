testing
test01CalculateDistanceWithEnd

	| result |
	
	self rulerTool startPosition: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 2 @ 1).
	self assert: result equals: 5.
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 9 @ 10).
	self assert: result equals: 45