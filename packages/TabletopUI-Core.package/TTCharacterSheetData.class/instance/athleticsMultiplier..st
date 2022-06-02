dice roll modifiers
athleticsMultiplier: aText

	self skillsLookup at: #athletics put: ((aText asNumber min: 2) max: 0)