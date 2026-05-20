accessing
getState

	^ Dictionary new
		at: #gameState put: self gameState;
		at: #rolls put: self rolls asDictionary;
		yourself