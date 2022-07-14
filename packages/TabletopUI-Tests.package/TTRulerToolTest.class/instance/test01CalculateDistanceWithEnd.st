testing
test01CalculateDistanceWithEnd

	| result |
	self rulerTool startPosition: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	self assert: result equals: 0.
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 2 @ 1).
	self assert: result equals: 5.
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 1 @ 2).
	self assert: result equals: 5.
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 2 @ 2).
	self assert: result equals: 5.
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 4 @ 2).
	self assert: result equals: 15.
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: -9 @ 2).
	self assert: result equals: 50. 
	"this is expected, as long as the conversion is only math based and does not check whether tiles actually exist"
	result := self rulerTool calculateDistanceWithEnd: (self map convertTileCoordinatesToPixelPosition: 9 @ 10).
	self assert: result equals: 45.