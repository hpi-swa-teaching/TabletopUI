testing
test02EndFightingAsGM

	self context endFightingAs: self gm.
	self assert: #default equals: self manager context gameState
	