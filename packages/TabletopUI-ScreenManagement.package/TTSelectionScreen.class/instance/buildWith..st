toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: ({
		self listBounds -> [self createListSpecWith: aToolBuilder].
		self continueButtonBounds -> [self createContinueButtonSpecWith: aToolBuilder].
		self leaveButtonBounds -> [self createLeaveButtonSpecWith: aToolBuilder]} as: Dictionary)
