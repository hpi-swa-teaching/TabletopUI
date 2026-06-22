accessing - spellcasting
spellAt: aLevelNumber slot: aSlotNumber field: aSymbol put: anObject

	((self spells at: aLevelNumber) at: aSlotNumber) at: aSymbol put: anObject.
	self changed: ('spell' , aLevelNumber asString , 'Slot' , aSlotNumber asString , aSymbol asString capitalized) asSymbol