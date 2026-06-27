testing
test02SelectedMonster

	self menu selectedIndex: 2.
	self assert: self menu selectedItem name equals: (self menu nameList at: 2)