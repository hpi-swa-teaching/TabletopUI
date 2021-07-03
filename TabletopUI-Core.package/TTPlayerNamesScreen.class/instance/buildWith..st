toolbuilder
buildWith: aToolBuilder

	self inputFields addMorph: (self buildInputFieldsWith: aToolBuilder).
		
	
	^ self buildWith: aToolBuilder children: {
		(self class leaveButtonBounds) -> (self createLeaveButtonSpecWith: aToolBuilder) .
		(self class continueButtonBounds) -> (self createContinueButtonSpecWith: aToolBuilder) .
		(self class inputFieldBounds)  -> [self createSpecWith: aToolBuilder] }.