testing
test04ChangeCountByPositive

	self screen changeCountBy: 2.
	self assert: self screen countText equals: '5'