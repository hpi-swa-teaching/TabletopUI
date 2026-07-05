testing
test02EndpointWIthPort

	self runRandomizedTest: [ | endpoint |
		endpoint := TTEndpoint new.
		endpoint port: self randomPort.
		self deny: endpoint isValid]