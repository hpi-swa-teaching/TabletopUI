testing
test03EndpointWIthAddress

	self runRandomizedTest: [ | endpoint |
		endpoint := TTEndpoint new.
		endpoint address: 'localhost'.
		self deny: endpoint isValid]