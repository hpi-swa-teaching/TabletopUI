testing
test07CalculateDistanceZero

	| result |
	self rulerTool startPosition: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	self rulerTool endPosition: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	result := self rulerTool calculateDistance.
	self assert: result equals: 0