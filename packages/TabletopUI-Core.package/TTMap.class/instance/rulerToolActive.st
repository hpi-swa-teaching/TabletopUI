accessing
rulerToolActive
	self rulerTool ifNil: [^false].
	self rulerTool morph owner ifNil: [^false].
	^true