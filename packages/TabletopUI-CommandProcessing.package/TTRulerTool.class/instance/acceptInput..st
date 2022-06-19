accessing
acceptInput: aPosition

	(self clickCounter > 1) ifTrue: [
	self clickCounter: 0].
	(self clickCounter = 1) ifTrue: [
			self endPosition: aPosition;
				incrementClickCounter.
			self inputField log logOutput: ('Distance measured: ' , self calculateDistance asString , 'ft')].
	(self clickCounter = 0) ifTrue: [
			self startPosition: aPosition;
				incrementClickCounter].

	