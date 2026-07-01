initialization
newWithAddress: anAddress tcpPort: tcpPort

	| nwm |
	nwm := self new.
	nwm tcpPort: tcpPort.
	nwm setServerAddressFromString: anAddress.
	^ nwm