connection
initializeClientConnection: client

	| connection |
	connection := TTClientConnection new.
	connection relayServer: self.
	connection tcpSocket: client.
	connection clientId: self idAssigner getNewId.
	connection startListening.
	connection informClientAboutId.
	^ connection