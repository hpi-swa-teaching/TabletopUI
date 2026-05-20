logging
getState

	^ Dictionary 
		new at: #actionLogList put: self actionLogList asArray;
		yourself