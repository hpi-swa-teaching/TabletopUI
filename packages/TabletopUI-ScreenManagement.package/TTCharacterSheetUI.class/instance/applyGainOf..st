input handling - money
applyGainOf: aSymbol

	self processInputRequesting: 'How much ' , aSymbol asString , ' gained?'
		calling: [:receiver :argument | receiver gain: argument of: aSymbol].