toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: {
		self class decreaseButtonBounds -> [self createDecreaseButtonSpecWith: aToolBuilder].
		self class inputFieldBounds -> [self createInputFieldSpecWith: aToolBuilder].
		self class increaseButtonBounds-> [self createIncreaseButtonSpecWith: aToolBuilder].
		self class continueButtonBounds -> [self createContinueButtonSpecWith: aToolBuilder].
		self class leaveButtonBounds -> [self createLeaveButtonSpecWith: aToolBuilder]} asDictionary
