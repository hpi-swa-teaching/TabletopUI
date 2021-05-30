roll for initiative
evaluateInitiativeRoll: aString by: aTTPlayer

	| rollResult |
	
	rollResult := self executeDiceRollCommand: aString.
	(rollResult isAllDigits) ifTrue: [
		self rolls add: (aTTPlayer name -> (rollResult asNumber))].
	
	^ rollResult