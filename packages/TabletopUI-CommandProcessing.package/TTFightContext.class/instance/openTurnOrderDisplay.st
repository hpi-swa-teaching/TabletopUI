initialize-release
openTurnOrderDisplay

	Transcript show: 'Opening display'.
	self display: (TTTurnOrderDisplay openWith: self).
	self subWindowManager register: self display