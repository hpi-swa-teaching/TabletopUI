roll for initiative
endRollForInitiativeAs: aTTPlayer

	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToDefaultEvaluator.
		output := 'Ended Roll for Initiative']
	ifFalse: [
		output := self ErrorNotAuthorised].
	
	^ output