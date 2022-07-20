testing
test09Continue

	self screen countText: '3'.
	self screen continue.
	self assert: self window contents first model class equals: TTCharacterNamesScreen.