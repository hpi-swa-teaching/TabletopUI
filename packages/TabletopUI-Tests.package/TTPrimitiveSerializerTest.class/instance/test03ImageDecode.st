testing
test03ImageDecode

	| image deSerializedImage |
	image := Form extraWizard.
	deSerializedImage := TTSerializer deSerializeImage: Form extraWizardContents.
	
	self assert: (image extent = deSerializedImage extent and: [image bits = deSerializedImage bits])