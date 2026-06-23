testing
test05EndTurnViaButtonUsesCommandPath

	self assert: self context currentPlayerName equals: self display currentPlayerName.
	self assert: self display currentPlayerName equals: 'Alice'.
	self display proceedToNextPlayer.
	self assert: self context currentPlayer name equals: 'Bob'.
	self assert: self display currentPlayerName equals: 'Bob'.
	self assert: self context currentPlayerName equals: self display currentPlayerName