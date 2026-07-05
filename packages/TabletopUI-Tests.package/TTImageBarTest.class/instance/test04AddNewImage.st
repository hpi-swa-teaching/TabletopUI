testing
test04AddNewImage

	| params image insertedImage |
	image := Form extraWizard.
	params := Dictionary new.
	params at: 'name' put: 'test'.
	params at: 'image' put: Form extraWizardContents.
	self imageBar addImage: params.
	
	self assert: self imageBar images size = (self defaultImageCount + 1).
	insertedImage := (self imageBar images at: 'test') form.
	insertedImage form.
	self assert: (image extent = insertedImage extent and: [image bits = insertedImage bits])