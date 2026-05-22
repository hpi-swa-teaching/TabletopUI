testing
test03NameListUpdatesOnPresetChange

	self screen characterSheets at: 1 put: 'wizard'.
	self assert: self screen nameList first equals: '[ wizard ] playerA'.
	self assert: self screen nameList last equals: '[ gamemaster ] playerB'.