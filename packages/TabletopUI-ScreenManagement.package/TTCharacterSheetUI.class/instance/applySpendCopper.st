input handling
applySpendCopper

	self processInputRequesting: 'How much copper spent?'
		calling: [:receiver :argument | receiver gain: argument of: #copper].