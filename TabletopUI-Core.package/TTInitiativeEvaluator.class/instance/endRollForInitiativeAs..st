roll for initiative
endRollForInitiativeAs: aTTPlayer

	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self rolls sort: [ :association1 :association2 | (association1 value) > (association2 value)].
		(self rolls size < 2) ifTrue: [
			output := 'At least 2 characters have to participate in a fight.']
		ifFalse: [
			output := 'The fight begins!'.
			self inputField changeToFightEvaluatorWithFightOrder: (self rolls keys) asOrderedCollection]]
	ifFalse: [
		output := self ErrorNotAuthorised].
	
	^ output