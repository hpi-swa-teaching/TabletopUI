player-positioning
readRemoteEndpointFromUdpSocket

	| address port remoteEndpoint |
	address := self udpSocket remoteAddress.
	port := self udpSocket remotePort.
	remoteEndpoint := TTEndpoint new.
	remoteEndpoint
		address: address;
		port: port.
	^ remoteEndpoint