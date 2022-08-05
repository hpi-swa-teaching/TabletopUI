accessing
rulerToolActive
	self rulerTool ifNil: [^false].
	self rulerTool aboutToBeClosed ifTrue: [^false].
	self rulerTool morph owner ifNil: [^false].
	^true