input handling
setImageFor: aBoolean

	self image: (aBoolean ifTrue: [self onForm] ifFalse: [self offForm]).
	self changed.