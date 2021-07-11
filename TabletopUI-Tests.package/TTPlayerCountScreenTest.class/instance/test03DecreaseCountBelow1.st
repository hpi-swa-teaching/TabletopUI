testing
test03DecreaseCountBelow1

	self screen 
		countText: '1';
		decreaseCount.
	self assert: self screen countText equals: '1'.