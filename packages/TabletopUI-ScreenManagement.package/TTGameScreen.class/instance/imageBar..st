accessing
imageBar: aTTImageBar

	imageBar := aTTImageBar.
	self networkmanager referenceManager addEntry: aTTImageBar forId: 'mapSelector'.
	self imageBar networkManager: (self networkmanager)