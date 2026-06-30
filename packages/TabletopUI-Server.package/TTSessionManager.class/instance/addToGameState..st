updating
addToGameState: params

	| name role |
	name:= params at: 'name'.
	role:= params at: 'role'.
	self addToGameState: name role: role.