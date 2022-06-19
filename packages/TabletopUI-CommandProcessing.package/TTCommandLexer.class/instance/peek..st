as yet unclassified
peek: aNumber
	
	tokens size < aNumber ifTrue: [^ nil].
	^ tokens at: aNumber