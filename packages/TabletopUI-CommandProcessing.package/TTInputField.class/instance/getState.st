accessing
getState

	 ^Dictionary new
		at: #parser put: self parser getState;
		yourself