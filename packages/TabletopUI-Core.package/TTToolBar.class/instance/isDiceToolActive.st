accessing
isDiceToolActive
	
	self diceTool ifNil: [^ false].
	self diceTool owner
		ifNotNil: [ ^ false] 
		ifNil: [ ^ true ]