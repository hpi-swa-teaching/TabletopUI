testing
test01IsGamemaster

	self character role: #gamemaster.
	self assert: self character isGamemaster