input handling
mouseUp: anEvent

	| newState |
	newState := (self model perform: self getSelector) = 0
		ifTrue: [1]
		ifFalse: [0].
	self model perform: self setSelector with: newState.
	self setImageFor: newState.