testing
test01IsGamemaster

	self character role: TTCharacter gamemaster.
	self assert: self character isGamemaster