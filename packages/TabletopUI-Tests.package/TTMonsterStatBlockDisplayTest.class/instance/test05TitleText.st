testing
test05TitleText

	self assert: self defaultDisplay titleText asString equals: (self linesTerminated: #(
		'Goblin'
		'Small Humanoid (Goblinoid), Neutral Evil'))