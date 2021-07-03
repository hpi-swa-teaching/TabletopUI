input evaluation
handleInvalidRollFrom: aTTPlayer

	(self fightingPlayers includes: aTTPlayer) ifTrue: [
		^ 'It is not your turn!']
	ifFalse: [
		^ 'You do not participate in the fight!']