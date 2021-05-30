roll for initiative
startRollForInitiativeAs: aTTPlayer

	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToInitiativeEvaluator.
		output := 'Started Roll for Initiative']
	ifFalse: [
		output := self ErrorNotAuthorised].

	^ output