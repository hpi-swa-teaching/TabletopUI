fight
removePlayer: aTTCharacterName from: aPerformingTTCharacter

	| aTTCharacter |
	aPerformingTTCharacter isGamemaster ifFalse: [
		^self onlyGMIsAllowedMessageString].
	(self currentPlayer name = aTTCharacterName) ifTrue: [
		self proceedToNextPlayer].
	self fightingPlayers do: [ :aPlayer |
		aPlayer name = aTTCharacterName ifTrue: [aTTCharacter := aPlayer]].
	self fightingPlayers remove: aTTCharacter.
	self changed: #fightingPlayersNames.
	^self playerRemovedMessageString: aTTCharacter