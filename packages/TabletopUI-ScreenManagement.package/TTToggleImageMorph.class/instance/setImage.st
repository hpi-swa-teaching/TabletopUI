input handling
setImage

	self image: (self state = 1
		ifTrue: [self onForm]
		ifFalse: [self offForm]).
	self changed