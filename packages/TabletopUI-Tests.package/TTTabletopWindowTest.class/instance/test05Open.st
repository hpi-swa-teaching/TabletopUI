testing
test05Open
	
	self window: TTTabletopWindow open.
	self assert: self window model class equals: TTTabletopWindow.
	self window abandon