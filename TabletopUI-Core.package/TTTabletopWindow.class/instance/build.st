toolbuilder
build

	self spec: (self buildWindowWith: self builder specs: {
		(0 @ 0 corner: 1 @ 1) -> [self currentScreen buildWith: self builder]}).
	self spec label: 'placy'.
	self spec extent: 800 @ 500.
	
	^ self builder build: self spec