lookups
addressForName: hostName family: addressFamily
	"NetNameResolver addressForName: 'squeak.org' family: SocketAddressInformation addressFamilyINET4"
	"NetNameResolver addressForName: 'localhost' family: SocketAddressInformation addressFamilyINET6"
	"NetNameResolver addressForName: '127.0.0.1' family: SocketAddressInformation addressFamilyINET6"
	| addresses |
	self useOldNetwork ifTrue:
		[^self oldAddressForName: hostName].
	addresses := self addressesForName: hostName family: addressFamily.
	^addresses
		ifEmpty: [nil]
		ifNotEmpty: [addresses first socketAddress]