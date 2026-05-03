lookup
addressesForName: hostName family: addressFamily
	"NetNameResolver
		addressesForName: 'squeak.org'
		family: SocketAddressInformation addressFamilyINET4"
	"NetNameResolver
		addressesForName: 'impara.de'
		family: SocketAddressInformation addressFamilyINET6"
	
	^SocketAddressInformation
		forHost: hostName
		service: ''
		flags: 0
		addressFamily: addressFamily
		socketType: SocketAddressInformation socketTypeStream
		protocol: SocketAddressInformation protocolTCP