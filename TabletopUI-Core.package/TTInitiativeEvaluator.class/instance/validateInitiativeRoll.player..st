roll for initiative
validateInitiativeRoll: aString player: aTTPlayer

	| output |

	(self rolls keys includes: aTTPlayer name) ifTrue: [
		output := self alreadyRolledError]
	ifFalse: [
		(aTTPlayer isGamemaster) ifTrue: [
			output := self onlyPlayerRollError]
		ifFalse: [
			output := self evaluateInitiativeRoll: aString player: aTTPlayer]].
	
	^ output