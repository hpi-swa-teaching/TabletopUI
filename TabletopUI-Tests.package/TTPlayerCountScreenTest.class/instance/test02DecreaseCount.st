testing
test02DecreaseCount

	self screen countText: '3'.
	self screen decreaseCount.
	self assert: self screen countText equals: '2'