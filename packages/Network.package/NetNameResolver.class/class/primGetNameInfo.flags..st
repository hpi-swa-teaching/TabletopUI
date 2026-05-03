primitives-ipv6
primGetNameInfo: socketAddress flags: flags

	<primitive: 'primitiveResolverGetNameInfo' module: 'SocketPlugin'>
	flags == 0 ifTrue: [^self primGetNameInfo: socketAddress
						flags: SocketAddressInformation numericFlag].
	self primitiveFailed