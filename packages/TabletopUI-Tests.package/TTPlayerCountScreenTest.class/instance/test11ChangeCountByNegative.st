testing
test11ChangeCountByNegative

	self screen changeCountBy: -2.
	self assert: self screen countText equals: '1'