initialization
newWithInputField: aTTInputField fightOrder: aCollection

	^ self new
		inputField: aTTInputField;
		fightingPlayers: aCollection;
		currentPlayer: aCollection first;
		openTurnOrderDisplay;
		yourself