running
setUp

	self receiver: (TTMockNetworkReceiver newOnPort: self defaultTestPort).
	self ref: TTReferenceManager new