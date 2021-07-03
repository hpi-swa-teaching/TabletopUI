input evaluation
evaluateInput: aString from: aTTPlayer

	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		^ self executeDiceRollCommand: aString asPlayer: aTTPlayer].
	(aString matchesRegex: '^end fight$') ifTrue: [
		^ self endFightingAs: aTTPlayer].
	(aString matchesRegex: '^remove (.+)$') ifTrue: [
		^ self executeRemoveCommand: aString asPlayer: aTTPlayer].
	
	 ^ self ErrorCommandNotFound