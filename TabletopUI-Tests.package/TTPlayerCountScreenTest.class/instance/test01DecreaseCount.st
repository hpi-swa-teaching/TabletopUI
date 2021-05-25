testing
test01DecreaseCount

	playerCountScreen countText: '2'.
	playerCountScreen decreaseCount.
	self assert: playerCountScreen countText equals: '1'.
	playerCountScreen decreaseCount.
	self assert: playerCountScreen countText equals: '1'