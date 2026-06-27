initialization
initialize

	super initialize.
	self sheet: self initializeSheet.
	self nextPageButton: self initializeArrowButton.
	self closeButton: self initializeCloseButton.