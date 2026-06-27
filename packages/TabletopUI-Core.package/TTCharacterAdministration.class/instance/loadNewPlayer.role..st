initialization
loadNewPlayer: name role: role

	| character |
	character:= TTCharacter newWithName: name role: role.
	self addPlayer: character.
	^character.