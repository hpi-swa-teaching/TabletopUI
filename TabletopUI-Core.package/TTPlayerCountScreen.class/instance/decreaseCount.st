player count
decreaseCount

	(self playerCount > 1) ifTrue: [
		self playerCount: self playerCount - 1.
		self changed: #countText]