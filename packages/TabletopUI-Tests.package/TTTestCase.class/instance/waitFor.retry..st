waiting
waitFor: waitBlock retry: retryBLock

	| deadline |
	deadline := DateAndTime now + self actionWaitDuration.
	
	[DateAndTime now < deadline] whileTrue: [
		waitBlock value ifTrue: [^ self].
		retryBLock value.
		Processor yield.
		(Delay forMilliseconds: 5) wait].
	
	self assert: waitBlock value