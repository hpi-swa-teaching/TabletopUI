running
setUp

	self 
		parser: TTMockParser new;
		context: 
			(self class CUT new
			parser: self parser; yourself).
	self parser context: self context