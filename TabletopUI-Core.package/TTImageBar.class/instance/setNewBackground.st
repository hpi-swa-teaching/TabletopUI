background editing
setNewBackground

	(self selectedIndex > 0) ifTrue: [
		self map addMorphNearBack: (self images at: self selectedImage)]
	