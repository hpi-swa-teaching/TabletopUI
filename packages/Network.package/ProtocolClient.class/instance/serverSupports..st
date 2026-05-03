testing
serverSupports: capabilityName

	^ self serverCapabilities at: capabilityName ifAbsent: [false]