testing
test01IncreaseCount

	self screen increaseCount.
	self assert: self screen countText equals: '4'