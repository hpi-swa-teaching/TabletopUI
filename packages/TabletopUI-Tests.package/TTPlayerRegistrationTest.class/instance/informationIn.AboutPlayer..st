testing
informationIn: aTTTabletopWindow AboutPlayer: playerName


	| state |
	
	state:= aTTTabletopWindow getState.
	^ ((state at: 'map') at: 'characterTokens') at: playerName