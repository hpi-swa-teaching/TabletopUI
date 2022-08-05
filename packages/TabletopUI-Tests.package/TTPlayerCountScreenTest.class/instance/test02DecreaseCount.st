testing
test02DecreaseCount

	self screen decreaseCount.
	self assert: self screen countText equals: '2'