as yet unclassified
test03OnlyElementAccess

	| referenceManager crashes |
	crashes := false.
	referenceManager := TTReferenceManager new.
	referenceManager addEntry: referenceManager forId: 'reef'.
	
	self assert: referenceManager = (referenceManager resolve: 'reef')