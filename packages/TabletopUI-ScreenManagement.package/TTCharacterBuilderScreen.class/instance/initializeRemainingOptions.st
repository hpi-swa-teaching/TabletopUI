initialize-release
initializeRemainingOptions

	self remainingOptions: Dictionary new.
	self remainingOptions at: #abilities put: {8. 10. 12. 13. 14. 15. 0} asSortedCollection.
	self remainingOptions at: #cantrips put: (self class cantrips at: #barbarian).
	self remainingOptions at: #spells put: (self class spellsLevel1 at: #barbarian).