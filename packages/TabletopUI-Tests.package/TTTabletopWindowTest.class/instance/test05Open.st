testing
test05Open
	
	self window: TTTabletopWindow open.
	self assert: (self window model isKindOf: TTTabletopWindow).
	self window abandon