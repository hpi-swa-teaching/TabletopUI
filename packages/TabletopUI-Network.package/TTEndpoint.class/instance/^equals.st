comparing
= anEndpoint

	^ self class == anEndpoint class
		and: [self address = anEndpoint address]
		and: [self port = anEndpoint port]