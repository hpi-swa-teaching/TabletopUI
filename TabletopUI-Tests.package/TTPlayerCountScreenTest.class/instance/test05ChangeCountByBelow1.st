testing
test05ChangeCountByBelow1

	self screen 
		countText: '3';
		changeCountBy: -5.
	self assert: self screen countText equals: '1'