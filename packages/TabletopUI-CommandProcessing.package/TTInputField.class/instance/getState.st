accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyParser put: self parser getState;
		yourself