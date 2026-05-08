listening
listeningActive

	^ self shouldClose not and: [self tcpSocket isConnected or: [self tcpSocket isWaitingForConnection]]