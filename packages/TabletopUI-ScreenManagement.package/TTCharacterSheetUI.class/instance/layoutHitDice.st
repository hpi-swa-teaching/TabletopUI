layout containers
layoutHitDice

	| form container |
	form := self hitDiceForm.
	container := Morph new 
		extent: (self hitDiceExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildHitDiceIn: container.
	^ container