as yet unclassified
hasNameDuplicates

	| uniqueNames |
	
	uniqueNames := (self players collect: [:aTTPlayer | aTTPlayer name]) asSet.
	^ (self players size = (uniqueNames size)) not