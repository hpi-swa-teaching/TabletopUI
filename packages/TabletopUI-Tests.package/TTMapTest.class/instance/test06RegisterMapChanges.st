testing
test06RegisterMapChanges

	"Testing Observer-Subject via self shunt"
	self map: TTMap new.
	self map
		addDependent: self;
		createTokenFor: (TTCharacter newWithName: '' role: TTCharacter player).
	self mapHasChanged: false.
	(self map tiles at: 1 at: 2) acceptDroppingMorph: self map tokens first event: DropEvent new.
	self assert: self mapHasChanged