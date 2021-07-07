as yet unclassified
test02characterAdministrationMasterSelection

	screen selectedIndex: 2.
	screen continue.
	self assert: ((window characterAdministration players at: 1) role = TTPlayer player).
	self assert: ((window characterAdministration players at: 2) role = TTPlayer gamemaster)