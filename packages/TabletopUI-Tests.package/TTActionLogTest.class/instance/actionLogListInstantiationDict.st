testing
actionLogListInstantiationDict

	^ Dictionary new
		at: TTGameStateKeys keyActionLogList put: #('INPUT: h: roll 20' '> 20');
		yourself