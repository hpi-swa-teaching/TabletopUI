drag and drop
mouseDown: anEvent

	(self owner isTTTile) ifTrue: [
		self owner occupied: false]. 
	self startDrag: self with: self