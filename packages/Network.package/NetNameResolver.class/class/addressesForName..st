lookup
addressesForName: hostName
	"NetNameResolver addressesForName: 'impara.de' "
	
	^SocketAddressInformation
		forHost: hostName
		service: ''
		flags: 0
		addressFamily: 0
		socketType: SocketAddressInformation socketTypeStream
		protocol: SocketAddressInformation protocolTCP