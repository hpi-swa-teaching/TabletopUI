accessing
createDiceTool
	self diceTool ifNil: [ ^ true].
	^ self isDiceToolActive.