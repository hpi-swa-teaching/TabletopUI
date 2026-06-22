input handling
setImageFor: aNumber

	self image: (aNumber = 1
		ifTrue: [self onForm]
		ifFalse: [self offForm]).
	self changed.