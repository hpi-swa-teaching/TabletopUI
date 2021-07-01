input evaluation
executeDiceRollCommand: aString asPlayer: aTTPlayer

	| output |

	(self currentPlayer = aTTPlayer) ifTrue: [
		output := self executeDiceRollCommand: aString.
		(output isAllDigits) ifTrue: [
			self proceedToNextPlayer]]
	ifFalse: [
		output := self handleInvalidRollFrom: aTTPlayer].
		
	^ 'FIGHT: ', output