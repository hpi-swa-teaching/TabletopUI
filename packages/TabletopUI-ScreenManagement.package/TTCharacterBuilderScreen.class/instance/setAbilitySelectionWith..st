as yet unclassified
setAbilitySelectionWith: selection

	selection = 0 
		ifFalse: [
			(self remainingNumbers at: selection) = 0 
				ifTrue: [self removeAbilitySelection]
				ifFalse: [
					(self choices at: 5) at: (((TTCharacterBuilderScreen options) at: 5) at: self selectedIndex) put: (self remainingNumbers at: selection).
					self remainingNumbers remove: (self remainingNumbers at: selection)]]