roll for initiative
evaluateInitiativeRoll: aString player: aTTPlayer

	| rollResult |
	
	rollResult := self evaluateRollDiceCommand: aString.
	(rollResult isAllDigits) ifTrue: [
		self rolls add: (aTTPlayer name -> (rollResult asNumber))].
	
	^ rollResult