testing
test05buildCategory

	| morphCountBefore |
	morphCountBefore := self wiki submorphs size.
	self wiki buildCategory: 'Test Category' from: self collection.
	self assert: self wiki submorphs size = (morphCountBefore + 2)