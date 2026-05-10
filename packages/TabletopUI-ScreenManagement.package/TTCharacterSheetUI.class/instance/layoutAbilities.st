layout
layoutAbilities

	| form container |
	form := self abilitiesForm.
	container := Morph new 
		extent: (self abilitiesExtent);
		color: Color transparent.
	container addMorph: (ImageMorph new
		image: form;
		lock;
		yourself).
	self buildAbilitiesIn: container.
	^ container