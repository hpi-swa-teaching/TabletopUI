testing
test02WrongGameStateDefault
	| command result |
	command := TTCharacterCommand new
		name: 'Dieter';
		yourself.
	
	self context gameState: #default.
	result := command executeRemove: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage.