accessing
peek: aNumber
	
	self tokenSize < aNumber ifTrue: [^ nil].
	^ self tokens at: aNumber