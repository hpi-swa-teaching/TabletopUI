initialization
launchServerWithPlayerCount: playerCount

	[
		[self relay getConnectedClientCount = playerCount] whileFalse: [(Delay forMilliseconds: 1) wait].
		"Server needs to start after clients"
		self server: (TTNetworkManager newWithAddress: '127.0.0.1' tcpPort: self relay getServerPort udpPort: 0)
		"Doesn't need to receive udp packets"] fork