toolbuilder
buildWith: aToolBuilder

	^ self buildWith: aToolBuilder children: ({
		self continueButtonBounds -> [self createContinueButtonSpecWith: aToolBuilder].
		self leaveButtonBounds -> [self createLeaveButtonSpecWith: aToolBuilder].
		self listBounds -> [self createListSpecWith: aToolBuilder]} as: Dictionary)