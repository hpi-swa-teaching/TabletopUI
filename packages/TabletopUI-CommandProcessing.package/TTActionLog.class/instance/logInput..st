logging
logInput: aString

	self actionLogList addLast: ('INPUT: ' , aString).
	self changed: #actionLogList