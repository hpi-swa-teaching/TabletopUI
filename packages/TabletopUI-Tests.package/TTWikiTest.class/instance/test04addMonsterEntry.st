testing
test04addMonsterEntry

	| sizeBefore |
	sizeBefore := self wiki monsters size.
	self wiki addMonster: 'Test Monster' 
	description: 'a description'
     	lair: {'a lair'}
     	traits: {'a trait'}
     	actions: {'an action'}.
	self assert: self wiki monsters size = (sizeBefore + 1).
	self assert: self wiki monsters last titleMorph contents = '> Test Monster'