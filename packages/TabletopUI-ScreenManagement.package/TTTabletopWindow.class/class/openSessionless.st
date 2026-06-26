toolbuilder
openSessionless

	| window networkFacade |
	window := self new.
	networkFacade:= self createNetworkFacade: TTClientNetworkManager new.
	window sessionManager:(networkFacade instantiate: TTClientSessionManager withId: 'sessionmanager').
	window sessionManager window: window.
	window networkFacade: networkFacade.
	
	ToolBuilder open: (window openPlayerCountScreen; yourself).
	^ window.