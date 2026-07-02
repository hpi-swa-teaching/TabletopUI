testing
test01addItemEntry

	| sizeBefore |
	sizeBefore := self wiki items size.
	self wiki addItem: 'Test Item' 
	type: 'a type' 
	damage: 'a damage' 
	damageType: 'a damage type' 
	rarity: 'a rarity' 
	properties: 'a property' 
	weight: 42.
	self assert: self wiki items size equals: (sizeBefore + 1).
	self assert: self wiki items last titleMorph contents equals: '> Test Item'