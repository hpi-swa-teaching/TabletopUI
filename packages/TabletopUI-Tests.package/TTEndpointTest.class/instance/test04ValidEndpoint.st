testing
test04ValidEndpoint

	| endpoint |
	endpoint := TTEndpoint new.
	endpoint address: 'localhost'.
	endpoint port: 16631.
	self assert: endpoint isValid