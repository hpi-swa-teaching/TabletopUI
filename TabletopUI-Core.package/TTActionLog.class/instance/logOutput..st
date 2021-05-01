logging
logOutput: aString

	self actionLogList addLast: ('> ' , aString).
	self changed: #actionLogList