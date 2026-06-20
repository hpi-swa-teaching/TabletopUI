testing
test05TitleText

	self assert: self display titleText asString equals: (self linesTerminated: #(
		'Goblin'
		'Small Humanoid (Goblinoid), Neutral Evil'))