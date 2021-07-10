testing
test01IncreaseCount

	self screen countText: '3'.
	self screen increaseCount.
	self assert: self screen countText equals: '4'