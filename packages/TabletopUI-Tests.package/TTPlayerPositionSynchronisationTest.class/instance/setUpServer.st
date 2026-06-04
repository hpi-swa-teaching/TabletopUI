as yet unclassified
setUpServer

	| window  |
	self server: TTServerSessionManager new.
	window:= TTTabletopWindow openEmptySessionAddress: '' tcpPort: 0.
	self server window: window.
	window sessionManager: self server.

	
	
	