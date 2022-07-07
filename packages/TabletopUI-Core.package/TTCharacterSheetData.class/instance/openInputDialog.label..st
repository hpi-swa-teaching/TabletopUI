health and damage
openInputDialog: aValueSelector label: aLabel
	
	dialog ifNotNil: [
		self subWindowManager unregister: dialog.
		dialog abandon].
	dialog := TTInputDialog openWithModel: self valueSelector: aValueSelector label: aLabel.
	self subWindowManager register: dialog