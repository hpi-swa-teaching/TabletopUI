testing
test06correctAssignmentOfEntryToCategory

	| numberOfItems numberOfSpells numberOfMonsters numberOfSubclasses |
	numberOfItems := self wiki items size. 
	numberOfSpells := self wiki spells size. 
	numberOfMonsters := self wiki monsters size. 
	numberOfSubclasses := self wiki subclasses size. 
	
	self wiki addItem: 'Test Item' 
	type: 'a type' 
	damage: 'a damage' 
	damageType: 'a damage type' 
	rarity: 'a rarity' 
	properties: 'a property' 
	weight: 42.
	
	self assert: numberOfItems + 1 equals: (self wiki items size).
	self assert: numberOfSpells equals: (self wiki spells size).
	self assert: numberOfMonsters equals: (self wiki monsters size).
	self assert: numberOfSubclasses equals: (self wiki subclasses size)