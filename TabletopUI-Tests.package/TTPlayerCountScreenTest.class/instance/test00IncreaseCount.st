testing
test00IncreaseCount

	playerCountScreen countText: '3'.
	playerCountScreen increaseCount.
	self assert: playerCountScreen countText equals: '4'