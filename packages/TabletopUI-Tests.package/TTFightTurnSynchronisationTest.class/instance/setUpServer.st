running
setUpServer

	| window |
	self server: TTServerSessionManager new.
	window := TTTabletopWindow openEmptySession.
	self server window: window.
	window sessionManager: self server.
	window setAsGamemaster