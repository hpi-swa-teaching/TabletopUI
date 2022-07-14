health and damage
openInputDialog: aValueSelector label: aLabel
	
	dialog ifNotNil: [self closeDialog].
	dialog := TTInputDialog openWithModel: self valueSelector: aValueSelector label: aLabel.
	self subWindowManager register: dialog