input evaluation
handleInvalidRollFrom: aTTCharacter

	(self fightingPlayers includes: aTTCharacter) ifTrue: [
		^ self messageNotYourTurn]
	ifFalse: [
		^ self messageYouDontParticipate]