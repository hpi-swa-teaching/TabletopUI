testing
test02SelectedMonster

	self menu selectedIndex: 2.
	self assert: self menu selectedMonster name equals: (self menu nameList at: 2)