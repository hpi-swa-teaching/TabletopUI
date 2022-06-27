testing
test01ExecuteRemove

	| command |
	command := TTCharacterCommand new
		name: 'Dieter';
		yourself.
	
	self context gameState: #fight.
	command executeRemove: self context from: self character.
	self assert: 'Dieter' equals: self context removedPlayer.