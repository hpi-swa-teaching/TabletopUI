initialization
lauchClients: clientCount

	clientCount timesRepeat: [ | client |
		client := TTNetworkManager newWithAddress: '127.0.0.1' tcpPort: self relay getClientPort.
		self clients add: client.
		Processor yield]