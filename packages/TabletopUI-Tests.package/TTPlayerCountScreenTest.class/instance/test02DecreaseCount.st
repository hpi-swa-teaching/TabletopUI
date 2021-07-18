testing
test02DecreaseCount

	self screen 
		countText: '3';
		decreaseCount.
	self assert: self screen countText equals: '2'