layout
layoutSkills

	| form container |
	form := self skillsForm.
	container := Morph new 
		extent: (self skillsExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildSkillsIn: container.
	^ container