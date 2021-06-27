background editing
updateBackground

	| imageKey |
	(self selectedIndex > 0) ifTrue: [
		imageKey := self imageNameList at: self selectedIndex.
		self map addMorphNearBack: (self images at: imageKey)]
	