testing
test01OpenPlayerCountScreen

	self window openPlayerCountScreen.
	self 
		assert: self window contents size equals: 1;
		assert: self window contents first model class equals: TTPlayerCountScreen