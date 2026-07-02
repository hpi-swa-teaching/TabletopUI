testing
test02addSpellEntry

	| sizeBefore |
	sizeBefore := self wiki items size.
	self wiki addSpell: 'Test Spell' 
	castingTime: 'a casting time' 
	range: 'a range' 
	components: 'components' 
	duration: 'a duration' 
	class: 'classes'
	description: 'a description'.
	self assert: self wiki spells size equals: (sizeBefore + 1).
	self assert: self wiki spells last titleMorph contents equals: '> Test Spell'