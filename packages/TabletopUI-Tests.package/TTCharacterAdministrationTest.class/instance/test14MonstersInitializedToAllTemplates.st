testing
test14MonstersInitializedToAllTemplates

	self assert: (self characterAdministration monsters collect: [:m | m name])
		equals: (TTMonster allTemplates collect: [:m | m name]).