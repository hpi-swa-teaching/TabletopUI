input evaluation
evaluateInput: aString from: aTTPlayer

	| output |

	(self isValidFightPosition) ifTrue: [
		(self currentPlayer = aTTPlayer) ifFalse: [
			(aTTPlayer isGamemaster) ifFalse: [
				output := self ErrorNotAllowedToRoll]]
			ifTrue: [
				output := self executeDiceRollCommand: aString]].
		(self isFightOver) ifTrue:[
			output := output, '... The Fight is over.'.
			self endFighting].
	
	^ 'FIGHT: ', output