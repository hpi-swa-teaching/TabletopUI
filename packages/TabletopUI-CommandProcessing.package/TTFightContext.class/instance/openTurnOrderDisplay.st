initialize-release
openTurnOrderDisplay

	self display: (TTTurnOrderDisplay openWith: self).
	self addDependent: self display model