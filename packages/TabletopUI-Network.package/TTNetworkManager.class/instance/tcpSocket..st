accessing
tcpSocket: aSocket

	tcpSocket := aSocket.
	self tcpSocket setOption: 'TCP_NODELAY' value: 1.
	self tcpSocket setOption: 'SO_KEEPALIVE' value: 1.
	self tcpSocketStream: (SocketStream on: tcpSocket).
	self tcpSocketStream binary