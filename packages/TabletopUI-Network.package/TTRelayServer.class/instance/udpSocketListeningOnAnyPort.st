udp-relaying
udpSocketListeningOnAnyPort

	| socket |
	socket := Socket newUDP.
	socket setOption: 'SO_REUSEADDR' value: false.
	socket setPort: 0.
	^ socket