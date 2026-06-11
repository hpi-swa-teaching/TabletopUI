as yet unclassified
test05EmptyAddress

	| endpoint |
	endpoint := TTEndpoint new.
	endpoint address: ''.
	endpoint port: 16631.
	self deny: endpoint isValid