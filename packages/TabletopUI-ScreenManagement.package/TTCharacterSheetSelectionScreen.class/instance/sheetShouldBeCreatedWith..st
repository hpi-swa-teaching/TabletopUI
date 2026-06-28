selecting preset
sheetShouldBeCreatedWith: anObject

	'gamemaster' = anObject
		ifFalse: ['customized character' = anObject
			ifFalse: [^true]].
			
	^ false 
			
		

	