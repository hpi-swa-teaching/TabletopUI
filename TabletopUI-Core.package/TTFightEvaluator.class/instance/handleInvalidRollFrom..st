initialization
handleInvalidRollFrom: aTTPlayer

	| output |
	
	(self fightingPlayers includes: aTTPlayer) ifTrue: [
		output := 'It is not your turn!']
	ifFalse: [
		output := 'You do not participate in the fight!'].
	
	^ output