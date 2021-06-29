background editing
removeCurrentBackground

	| imageKey |
	(self selectedIndex > 0) ifTrue: [
		imageKey := self imageNameList at: self selectedIndex.
		self map removeMorph: (self images at: imageKey)]
	