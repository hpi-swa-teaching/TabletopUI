state
getState

	^ Dictionary new
		at: TTGameStateKeys keyContext put: self context getState;
		yourself