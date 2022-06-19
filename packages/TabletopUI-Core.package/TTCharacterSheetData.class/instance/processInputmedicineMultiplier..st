input and processing
processInputmedicineMultiplier: aText

	self medicineMultiplier: aText.
	self changed: #medicineMultiplierModifier.
	self changed: #medicineMultiplier.
	self changed: #medicine.