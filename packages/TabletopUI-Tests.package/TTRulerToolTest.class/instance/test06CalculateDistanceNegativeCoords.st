testing
test06CalculateDistanceNegativeCoords

	| result |
	
	self rulerTool startPosition: (self map convertMapCoordinatesToPixelPosition: 1 @ 1).
	result := self rulerTool calculateDistanceWithEnd: (self map convertMapCoordinatesToPixelPosition: -9 @ 2).
	self assert: result equals: 50. 
	"this is expected, as long as the conversion is only math based and does not check whether tiles actually exist"
