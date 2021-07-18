toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: ({
		self decreaseButtonBounds -> [self createDecreaseButtonSpecWith: aToolBuilder].
		self inputFieldBounds -> [self createInputFieldSpecWith: aToolBuilder].
		self increaseButtonBounds -> [self createIncreaseButtonSpecWith: aToolBuilder].
		self continueButtonBounds -> [self createContinueButtonSpecWith: aToolBuilder].
		self leaveButtonBounds -> [self createLeaveButtonSpecWith: aToolBuilder]} as: Dictionary)
