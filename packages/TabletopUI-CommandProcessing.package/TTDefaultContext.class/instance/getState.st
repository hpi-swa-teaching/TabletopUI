accessing
getState

	^ Dictionary new
		at: #gameState put: self gameState;
		yourself