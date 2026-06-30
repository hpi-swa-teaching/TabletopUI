testing
test03EndpointWIthAddress

	| endpoint |
	endpoint := TTEndpoint new.
	endpoint address: 'localhost'.
	self deny: endpoint isValid