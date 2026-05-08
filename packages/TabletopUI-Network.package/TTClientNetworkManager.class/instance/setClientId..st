accessing
setClientId: params

	self clientId: (params at: 'clientId').
	self startPlayerReceiveLoop.
	self coordinator start