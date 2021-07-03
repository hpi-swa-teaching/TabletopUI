input evaluation
evaluateInput: aString from: aTTPlayer

	| output |
	
	output := self ErrorCommandNotFound.
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		output := self executeDiceRollCommand: aString asPlayer: aTTPlayer].
	(aString matchesRegex: '^end fight$') ifTrue: [
		output := self endFightingAs: aTTPlayer].
	(aString matchesRegex: '^remove (.*)$') ifTrue: [
		output := self executeRemoveCommand: aString asPlayer: aTTPlayer].
	
	 ^ output