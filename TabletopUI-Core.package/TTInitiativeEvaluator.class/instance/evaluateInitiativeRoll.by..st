roll for initiative
evaluateInitiativeRoll: aString by: aTTPlayer

	| rollResult |
	
	rollResult := self checkDiceRollCommand: aString.
	(rollResult isAllDigits) ifTrue: [
		self rolls add: (aTTPlayer name -> (rollResult asNumber))].
	
	^ rollResult