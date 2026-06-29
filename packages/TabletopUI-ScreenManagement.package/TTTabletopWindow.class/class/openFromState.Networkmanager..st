toolbuilder
openFromState: aDictionary Networkmanager: aTTServerNetworkmanager
	
	| window networkFacade |
	window:= self new.
	networkFacade:= self createNetworkFacade: aTTServerNetworkmanager.
	window sessionManager: (networkFacade instantiate: TTServerSessionManager withId: 'sessionmanager').
	window sessionManager window: window.
	window networkFacade: networkFacade.
	window
		loadState: aDictionary; 
		yourself.
	^ ToolBuilder open: window