initialize-release
setUpServer
	| t1 |
	self server: TTServerSessionManager new.
	t1 := TTTabletopWindow openEmptySessionWithNetworkManager: self broadcastConnectionmanager.
	self server window: t1.
	t1 sessionManager: self server