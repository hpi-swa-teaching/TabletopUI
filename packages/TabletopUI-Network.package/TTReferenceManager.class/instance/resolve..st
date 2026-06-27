accessing
resolve: anId

	| anObject |
	anObject := self table
		at: anId
		ifAbsent: [^ nil].
	^ anObject