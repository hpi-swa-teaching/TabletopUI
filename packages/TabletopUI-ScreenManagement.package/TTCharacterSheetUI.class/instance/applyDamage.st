input handling - combat
applyDamage

	self processInputRequesting: 'How much damage?'
		calling: [:receiver :argument | receiver takeDamage: argument]