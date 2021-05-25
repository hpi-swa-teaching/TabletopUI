as yet unclassified
test02gameMasterSelection

	screen selectedIndex: 2.
	screen continue.
	self assert: ((window game players at: 1) role = TTPlayer player).
	self assert: ((window game players at: 2) role = TTPlayer gamemaster)