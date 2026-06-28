fight
removePlayer: aTTCharacterName from: aPerformingTTCharacter

	| name |
	aPerformingTTCharacter isGamemaster ifFalse: [
		^self onlyGMIsAllowedMessageString].
	(self currentPlayer name = aTTCharacterName) ifTrue: [
		self proceedToNextPlayer].
	self fightingPlayers do: [ :aPlayerName |
		aPlayerName = aTTCharacterName ifTrue: [name := aPlayerName]].
	self fightingPlayers remove: name.
	self changed: #fightingPlayersNames.
	^self playerRemovedMessageString: name