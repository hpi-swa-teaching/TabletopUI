utility
sendCommand: commandString
	
	self checkForCRLF: commandString.
	^ super sendCommand: commandString.