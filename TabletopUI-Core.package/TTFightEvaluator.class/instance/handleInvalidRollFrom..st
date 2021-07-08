input evaluation
handleInvalidRollFrom: aTTCharacter

	(self fightingPlayers includes: aTTCharacter) ifTrue: [
		^ 'It is not your turn!']
	ifFalse: [
		^ 'You do not participate in the fight!']