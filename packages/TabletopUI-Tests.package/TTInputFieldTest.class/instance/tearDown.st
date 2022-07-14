running
tearDown

	super setUp.
	
	self inputField: (TTInputField new 
		subWindowManager: (TTSubWindowManager new); yourself)