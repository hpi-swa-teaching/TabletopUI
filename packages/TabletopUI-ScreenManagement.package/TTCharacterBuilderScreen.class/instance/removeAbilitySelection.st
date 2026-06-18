as yet unclassified
removeAbilitySelection

	((self choices at: 5) at: self selectedIndex) ~= 0
		ifTrue: [self remainingNumbers add: ((self choices at: 5) at: self selectedIndex).
			(self choices at: 5) at: self selectedIndex put: 0]