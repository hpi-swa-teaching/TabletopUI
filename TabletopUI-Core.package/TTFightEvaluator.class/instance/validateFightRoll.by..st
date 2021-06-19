accessing
validateFightRoll: aString by: aTTPlayer

	| output |
	(self currentFightPosition <= self fightingPlayers size) ifTrue: [
		((self fightingPlayers at: self currentFightPosition) equals: aTTPlayer) ifFalse: [
			(aTTPlayer isGamemaster) ifTrue: [
				"keine Ahnung, was passieren soll"
				]
			ifFalse: [
				output := self ErrorNotAllowedToRoll]]
			ifTrue: [
				self currentFightPosition: (self currentFightPosition + 1).
				output := self evaluateInitiativeRoll: aString by: aTTPlayer]].
		(self currentFightPosition = self fightingPlayers size) ifTrue:[
		output := output, ' Ended Fight.'.
		self endFighting].
	output := 'Fight: ', output.
				
	^ output