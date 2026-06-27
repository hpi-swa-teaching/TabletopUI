initialization
initialize

	super initialize.
	self sheet: self initializeSheet.
	self nexPageButton: self initializeArrowButton.
	self closeButton: self initializeCloseButton.