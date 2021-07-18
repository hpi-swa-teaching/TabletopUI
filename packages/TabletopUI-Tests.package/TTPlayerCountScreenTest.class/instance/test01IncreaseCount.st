testing
test01IncreaseCount

	self screen 
		countText: '3';
		increaseCount.
	self assert: self screen countText equals: '4'