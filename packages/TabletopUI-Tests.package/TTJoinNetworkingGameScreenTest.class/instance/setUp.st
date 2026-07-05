running
setUp

	| window |
	
	window:= TTMockTabletopWindow new networkManager: TTMockNetworkManager new.
	
	self joinScreen: (TTJoinNetworkingGameScreen newWith: window).
	self setConnectionInformation.
	self joinScreen continue.