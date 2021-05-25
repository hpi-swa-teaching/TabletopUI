toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: {
		self class listBounds -> [self createListSpecWith: aToolBuilder].
		self class continueButtonBounds -> [self createContinueButtonSpecWith: aToolBuilder].
		self class leaveButtonBounds -> [self createLeaveButtonSpecWith: aToolBuilder]} asDictionary
