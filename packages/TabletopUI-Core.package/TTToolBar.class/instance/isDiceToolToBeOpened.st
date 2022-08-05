accessing
isDiceToolToBeOpened
	
	self diceTool ifNil: [^ true].
	self diceTool owner
		ifNotNil: [^ false] 
		ifNil: [^ true ]