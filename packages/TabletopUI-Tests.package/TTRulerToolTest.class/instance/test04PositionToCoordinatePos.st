testing
test04PositionToCoordinatePos

	self assert: 25@25 equals: (self rulerTool positionToCoordinatePos: 0@0).
	self assert: 75@75 equals: (self rulerTool positionToCoordinatePos: 75@75).
	self assert: 25@25 equals: (self rulerTool positionToCoordinatePos: 49@49).