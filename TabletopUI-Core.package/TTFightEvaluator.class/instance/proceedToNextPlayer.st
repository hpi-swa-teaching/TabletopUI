accessing
proceedToNextPlayer

	(self currentFightPosition < self fightingPlayers size) ifTrue: [
		self currentFightPosition: (self currentFightPosition + 1)]
	ifFalse: [
		self currentFightPosition: 1].
	
	self display model changeSelectionTo: self currentPlayer name