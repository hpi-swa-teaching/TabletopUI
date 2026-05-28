accessing
resolve: anId

	| anObject |
	anObject := self table
		at: anId
		ifAbsent: [^ self error: 'Id ', anId asString, ' could not be found in reference table'].
	^ anObject