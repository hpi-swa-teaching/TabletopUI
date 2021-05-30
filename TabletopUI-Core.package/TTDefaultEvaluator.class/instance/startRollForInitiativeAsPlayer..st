roll for initiative
startRollForInitiativeAsPlayer: aTTPlayer

	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		output := 'Started Roll for Initiative']
	ifFalse: [
		output := self gamemasterError].

	^ output