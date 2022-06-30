accessing
isDiceToolActive
	
	self diceTool ifNil: [^ false].
	self diceTool owner
		ifNotNil: [ ^ true] 
		ifNil: [ ^ false ]