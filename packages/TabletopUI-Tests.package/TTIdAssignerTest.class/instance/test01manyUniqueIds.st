testing
test01manyUniqueIds

	| allIds idCount |
	idCount := 1000.
	allIds := Set new.
	
	idCount timesRepeat: [allIds add: self idAssigner getNewId].
	
	self assert: allIds size = idCount