roll for initiative
endRollForInitiativeAs: aTTPlayer

	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self rolls sort: [ :association1 :association2 | (association1 value) > (association2 value)].
		output := 'Ended Roll for Initiative.'.
		self inputField changeToFightEvaluatorWithFightOrder: (self rolls keys)]
	ifFalse: [
		output := self ErrorNotAuthorised].
	
	^ output