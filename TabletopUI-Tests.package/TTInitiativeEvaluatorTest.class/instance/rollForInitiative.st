testing
rollForInitiative

	[self evaluator playersWhoRolled size < (4 atRandom + 1)] whileTrue: [
		self evaluator evaluateInput: self rolld6 from: self randomPlayer]