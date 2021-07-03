toolbuilder
buildWith: aToolBuilder
	
	^ self buildWith: aToolBuilder children: {
		(self class leaveButtonBounds) -> (self createLeaveButtonSpecWith: aToolBuilder) .
		(self class continueButtonBounds) -> (self createContinueButtonSpecWith: aToolBuilder) .
		(self class inputFieldListBounds)  -> [self createSpecWith: aToolBuilder] } asDictionary