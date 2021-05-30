roll for initiative
endRollForInitiativeAsPlayer: aTTPlayer

	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToDefaultEvaluator.
		output := 'Ended Roll for Initiative']
	ifFalse: [
		output := self gamemasterError].
	
	^ output