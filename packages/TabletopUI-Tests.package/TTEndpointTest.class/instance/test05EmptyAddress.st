testing
test05EmptyAddress

	self runRandomizedTest: [ | endpoint |
		endpoint := TTEndpoint new.
		endpoint address: ''.
		endpoint port: self randomPort.
		self deny: endpoint isValid]