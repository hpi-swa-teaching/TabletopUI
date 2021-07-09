testing
test04ChangeCountBy

	self screen countText: '3'.
	self screen changeCountBy: 2.
	self assert: self screen countText equals: '5'.
	self screen changeCountBy: -3.
	self assert: self screen countText equals: '2'