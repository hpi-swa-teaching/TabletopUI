accessing
isDiceToolActive
	
	self diceTool ifNil: [^ false].
	self diceTool model ifNil: [^false].
	self diceTool model aboutToBeClosed ifTrue: [^ false].
	
	self diceTool owner
		ifNotNil: [^ true] 
		ifNil: [^ false ]