drag and drop
mouseDown: anEvent
	"yellow button is right-click"

	anEvent yellowButtonPressed ifTrue: [^ self showTokenMenu].
	(self owner isTTTile) ifTrue: [self owner occupied: false].
	self startDrag: self with: self