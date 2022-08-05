testing
test05ChangeCountBelow1

	self screen changeCountBy: -5.
	self assert: self screen countText equals: '1'