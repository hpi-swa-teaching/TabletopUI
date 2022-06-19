testing
test07RemoveCharacter
	
	| command |
	command := parser parse: 'remove 420Blazer'.
	self assert: (command isKindOf: TTRemoveCommand).
	self assert: (command character isKindOf: TTCharacterCommand).
	