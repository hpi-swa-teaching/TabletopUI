asserting
assertOpenScreenClass: aClass

	| windowContents |
	windowContents := self window contents.

	self
		assert: windowContents size equals: 1;
		assert: windowContents first model class equals: aClass