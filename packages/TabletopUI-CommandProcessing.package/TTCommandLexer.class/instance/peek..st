as yet unclassified
peek: aNumber
	
	self tokenSize < aNumber ifTrue: [^ nil].
	^ self tokens at: aNumber