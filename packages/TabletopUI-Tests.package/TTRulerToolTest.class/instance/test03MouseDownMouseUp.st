testing
test03MouseDownMouseUp

	| result |
	self rulerTool inputMouseDown: (self map convertMapCoordinatesToPixelPosition: 1 @ 1).
	self rulerTool inputMouseUp: (self map convertMapCoordinatesToPixelPosition: 1 @ 1).
	result := self inputField log outputs first.
	self assert: result equals: 'Distance measured: 0ft'.