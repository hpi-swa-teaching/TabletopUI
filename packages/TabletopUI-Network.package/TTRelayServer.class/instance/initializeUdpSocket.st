udp-relaying
initializeUdpSocket

	self udpSocket: Socket newUDP.
	self udpSocket setOption: 'SO_REUSEADDR' value: false.
	[self udpSocket setPort: self defaultClientPort]
		on: Error
		do: [self udpSocket: self udpSocketListeningOnAnyPort]