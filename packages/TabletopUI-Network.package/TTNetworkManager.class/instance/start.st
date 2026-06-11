initialization
start

	self endpoint isValid ifFalse: [self error: 'NetworkManager can''t start without a valid endpoint.'].
	self startSharedObjectReceiveLoop