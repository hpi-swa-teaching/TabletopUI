accessing
getState

	 ^Dictionary new
		at: #context put: self context getState;
		yourself