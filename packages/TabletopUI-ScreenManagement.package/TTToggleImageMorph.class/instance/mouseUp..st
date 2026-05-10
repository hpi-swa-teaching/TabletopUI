input handling
mouseUp: anEvent

	| newState |
	newState := (self model perform: self getSelector) not.
	self model perform: self setSelector with: newState.
	self setImageFor: newState.