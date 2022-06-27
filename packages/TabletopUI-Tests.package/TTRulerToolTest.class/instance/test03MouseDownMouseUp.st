testing
test03MouseDownMouseUp

	| result |
	self rulerTool inputMouseDown: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	self rulerTool inputMouseUp: (self map convertTileCoordinatesToPixelPosition: 1 @ 1).
	result := self inputField log outputs first.
	self inputField log outputs removeFirst.
	self assert: result equals: 'Distance measured: 0ft'.