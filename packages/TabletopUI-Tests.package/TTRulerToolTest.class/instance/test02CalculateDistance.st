testing
test02CalculateDistance

	| result |
	self rulerTool startPosition: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	self rulerTool endPosition: (self map convertTileCoordinatesToPixelPosition: 10 @ 1).
	result := self rulerTool calculateDistance.
	self assert: result equals: 45.
	self rulerTool endPosition: (self map convertTileCoordinatesToPixelPosition: 2 @ 2).
	result := self rulerTool calculateDistance.
	self assert: result equals: 5.