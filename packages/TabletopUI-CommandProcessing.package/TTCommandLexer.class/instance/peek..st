as yet unclassified
peek: aNumber
	
	self tokens size < aNumber ifTrue: [^ nil].
	^ self tokens at: aNumber