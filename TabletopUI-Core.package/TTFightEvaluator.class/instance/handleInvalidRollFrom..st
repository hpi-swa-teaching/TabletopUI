input evaluation
handleInvalidRollFrom: aTTCharacter

	(self fightingPlayers includes: aTTCharacter) ifTrue: [
		^ self notYourTurn]
	ifFalse: [
		^ self doNotParticipate]