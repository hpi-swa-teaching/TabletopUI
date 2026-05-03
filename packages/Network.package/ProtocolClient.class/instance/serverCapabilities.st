private
serverCapabilities
	serverCapabilities ifNil: [self resetServerCapabilities].
	^serverCapabilities