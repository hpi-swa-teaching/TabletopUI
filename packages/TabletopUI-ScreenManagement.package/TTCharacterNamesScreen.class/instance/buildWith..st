toolbuilder
buildWith: aToolBuilder
	
	^ self buildWith: aToolBuilder children: ({
		(self leaveButtonBounds) -> (self createLeaveButtonSpecWith: aToolBuilder).
		(self continueButtonBounds) -> (self createContinueButtonSpecWith: aToolBuilder).
		(self inputFieldListBounds)  -> [self createScrollPaneSpecWith: aToolBuilder]} as: Dictionary)