display
buildCategories

	self buildCategory: 'Item' from: self items.
	self buildCategory: 'Spells' from: self spells.
	self buildCategory: 'Monsters' from: self monsters.
	self buildCategory: 'Subclasses' from: self subclasses
	