input handling
applyHealing

	self processInputRequesting: 'How much healing?'
		calling: [:receiver :argument | receiver heal: argument].
	self synchronizeDeathSaveRows