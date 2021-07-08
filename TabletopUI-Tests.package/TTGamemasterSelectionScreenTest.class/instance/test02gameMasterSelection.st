as yet unclassified
test02gameMasterSelection

	screen selectedIndex: 2.
	screen continue.
	self assert: ((window characterAdministration players at: 1) role = TTCharacter player).
	self assert: ((window characterAdministration players at: 2) role = TTCharacter gamemaster)