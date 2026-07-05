testing
test04ValidEndpoint

	self runRandomizedTest: [ | endpoint |
		endpoint := TTEndpoint new.
		endpoint address: 'localhost'.
		endpoint port: self randomPort.
		self assert: endpoint isValid]