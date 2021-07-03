name validation
containsNameDuplicates

	^ ((self players size + self npcs size) = 
		(self characterNames withoutDuplicates size)) not