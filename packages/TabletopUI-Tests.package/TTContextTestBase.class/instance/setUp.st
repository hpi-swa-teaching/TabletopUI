running
setUp

	self 
		manager: TTMockContextManager new;
		context: 
			(self class CUT new
			manager: self manager; yourself).
	self manager context: self context