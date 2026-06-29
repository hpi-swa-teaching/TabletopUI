input handling
mouseUp: anEvent

	| wasOn |
	wasOn := (self model perform: self getSelector) = 1.
	self model perform: self setSelector with: (wasOn ifTrue: [0] ifFalse: [1])