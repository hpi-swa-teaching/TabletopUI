as yet unclassified
newWithAddress: anAddress tcpPort: tcpPort udpPort: udpPort

	| nwm |
	nwm := self new.
	nwm tcpPort: tcpPort.
	nwm udpPort: udpPort.
	nwm setServerAddressFromString: anAddress.
	^ nwm