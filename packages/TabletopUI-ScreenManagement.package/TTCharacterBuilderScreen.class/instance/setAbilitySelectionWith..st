as yet unclassified
setAbilitySelectionWith: selection

	selection = 0 
		ifFalse: [
			(self remainingNumbers at: selection) = 0 
				ifTrue: [self removeAbilitySelection]
				ifFalse: [
					(self choices at: 3) at: selectedIndex put: (self remainingNumbers at: selection).
					self remainingNumbers remove: (self remainingNumbers at: selection)]]