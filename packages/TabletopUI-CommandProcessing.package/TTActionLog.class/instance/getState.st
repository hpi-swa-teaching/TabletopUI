accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyActionLogList put: self actionLogList asArray;
		yourself