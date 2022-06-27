testing
setUp

	self inputField: TTMockInputField new.
	self map: (TTMap newWith: OrderedCollection new).
	self rulerTool: (TTRulerTool newWithMap: self map inputField: self inputField)