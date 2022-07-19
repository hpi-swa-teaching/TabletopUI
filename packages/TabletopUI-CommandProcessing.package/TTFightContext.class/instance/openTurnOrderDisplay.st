initialize-release
openTurnOrderDisplay

	self display: (TTTurnOrderDisplay openWith: self).
	self subWindowManager register: self display