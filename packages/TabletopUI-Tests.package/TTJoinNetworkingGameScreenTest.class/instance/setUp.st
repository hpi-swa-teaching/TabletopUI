running
setUp

	| window |
	
	window:= TTMockTabletopWindow new.
	
	self joinScreen: (TTJoinNetworkingGameScreen newWith: window).
	self setConnectionInformation.
	self joinScreen continue.