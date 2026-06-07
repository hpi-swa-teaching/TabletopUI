as yet unclassified
test01manyUniqueIds

	| idAssigner allIds idCount |
	idCount := 1000.
	idAssigner := TTIdAssigner new.
	allIds := Set new.
	
	idCount timesRepeat: [allIds add: idAssigner getNewId].
	
	self assert: allIds size = idCount