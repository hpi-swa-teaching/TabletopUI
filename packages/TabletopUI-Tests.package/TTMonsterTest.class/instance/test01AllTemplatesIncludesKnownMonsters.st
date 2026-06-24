testing
test01AllTemplatesIncludesKnownMonsters

	| names |
	names := self templates collect: [:m | m name].
	self
		assert: (names includes: 'Goblin');
		assert: (names includes: 'Tarrasque')