testing
test05Open
	
	self window: TTTabletopWindow openSessionless.
	self assert: self window class equals: TTTabletopWindow.
	self window abandon