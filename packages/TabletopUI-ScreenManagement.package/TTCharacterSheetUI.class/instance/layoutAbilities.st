layout containers
layoutAbilities

	| form container |
	form := self abilitiesForm.
	container := Morph new 
		extent: (self abilitiesExtent);
		color: Color transparent.
	self 
		configureContainer: container withImage: form;
		buildAbilitiesIn: container.
	^ container