background editing
removeCurrentBackground

	(self selectedIndex > 0) ifTrue: [
		self map removeMorph: (self images at: self selectedImage)]
	