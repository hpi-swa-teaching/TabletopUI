input handling - money
applySpendOf: aSymbol

	self processInputRequesting: 'How much ' , aSymbol asString ,  ' spent?'
		calling: [:receiver :argument | receiver spend: argument of: aSymbol].

