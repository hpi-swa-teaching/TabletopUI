layout
layoutProficiencyBonus

	| form container |
	form := self proficiencyBonusForm.
	container := Morph new 
		extent: (self proficiencyBonusExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildProficiencyBonusIn: container.
	^ container