accessing
selectedItem

	self items isEmpty ifTrue: [^ nil].
	^ self items at: self selectedIndex