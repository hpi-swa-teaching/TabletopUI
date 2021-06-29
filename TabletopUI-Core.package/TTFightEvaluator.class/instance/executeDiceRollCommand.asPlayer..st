input evaluation
executeDiceRollCommand: aString asPlayer: aTTPlayer

	| output |

	(self currentPlayer = aTTPlayer) ifTrue: [
			self increaseCurrentFightPosition.
			self display model changeSelectionTo: self currentPlayer name.
			output := self executeDiceRollCommand: aString]
		ifFalse: [
			output := self handleInvalidRollFrom: aTTPlayer].
		
	^ 'FIGHT: ', output