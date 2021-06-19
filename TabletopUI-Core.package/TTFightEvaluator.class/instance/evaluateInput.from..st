as yet unclassified
evaluateInput: aString from: aTTPlayer

	| output |

	output := self ErrorCommandNotFound.
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		output := self executeDiceRollCommand: aString].
	
	^ output