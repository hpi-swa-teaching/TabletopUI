testing
test07RemoveCharacter
	
	| command |
	command := self parser parse: 'remove 420Blazer'.
	self assert: (command isKindOf: TTRemoveCommand).
	self assert: (command character isKindOf: TTCharacterCommand).
	