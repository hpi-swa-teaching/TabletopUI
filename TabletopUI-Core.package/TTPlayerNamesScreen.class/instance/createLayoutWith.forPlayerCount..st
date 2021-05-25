toolbuilder
createLayoutWith: aToolBuilder forPlayerCount: aNumber

	| layoutElements |
	
	layoutElements := {
		(self class leaveButtonBounds) -> (self createLeaveButtonSpecWith: aToolBuilder) .
		(self class continueButtonBounds) -> (self createContinueButtonSpecWith: aToolBuilder)} asDictionary.
	1 to: aNumber do: [:aNumberIndex |
		layoutElements add: (self inputFieldBoundsForIndex: aNumberIndex) -> (self createInputFieldSpecWith: aToolBuilder index: aNumberIndex)].
	
	^ layoutElements