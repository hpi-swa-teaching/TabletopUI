as yet unclassified
setUp

	| window |
	
	window:= TTMockTabletopWindow new networkmanager: TTMockNetworkmanager new.
	
	self joinScreen: (TTJoinNetworkingGameScreen newWith: window).
	self setConnectionInformation.
	self joinScreen continue.