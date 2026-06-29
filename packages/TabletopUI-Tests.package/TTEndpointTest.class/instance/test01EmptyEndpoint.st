testing
test01EmptyEndpoint

	| endpoint |
	endpoint := TTEndpoint new.
	self deny: endpoint isValid