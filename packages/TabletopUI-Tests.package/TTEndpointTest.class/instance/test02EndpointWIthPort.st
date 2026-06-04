as yet unclassified
test02EndpointWIthPort

	| endpoint |
	endpoint := TTEndpoint new.
	endpoint port: 16632.
	self deny: endpoint isValid