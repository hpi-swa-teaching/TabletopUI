testing
test06PositionUpdatedInState
	"| eventAtOrigin  stateBeforeDrag stateAfterStationaryDrag stateAfterDrag |
	
	stateBeforeDrag:= self token getState.
	
	eventAtOrigin:= MouseButtonEvent new
		setType: #mouseDown
		position: self token position
		which: 1
		buttons: 1
		hand: nil
		stamp: 0.
		
	self token mouseMove: eventAtOrigin.
	stateAfterStationaryDrag := self token getState.
	self assert: ((stateBeforeDrag at: #mapPosition) = (stateAfterStationaryDrag at: #mapPosition)).
	self token position: 250 @ 300.
	stateAfterDrag:= self token getState.
	self assert: ((stateAfterDrag mapCoordinates at: #x = 250) and: (stateAfterDrag mapCoordinates at: #y = 300))"
	
	

		