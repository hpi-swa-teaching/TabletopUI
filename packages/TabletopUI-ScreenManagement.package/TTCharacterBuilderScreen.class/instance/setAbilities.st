as yet unclassified
setAbilities

	| selection |
	selection := UIManager default
		chooseFrom: self remainingNumbers
		title: ('Please choose your value for ', (((TTCharacterBuilderScreen options) at: 3) at: self selectedIndex)).
	
	selection = 0 
		ifFalse: [
			(self remainingNumbers at: selection) = 0 
				ifTrue: [((self choices at: 3) at: selectedIndex) ~= 0
					ifTrue: [
						self remainingNumbers add: ((self choices at: 3) at: selectedIndex).
						(self choices at: 3) at: selectedIndex put: 0]]
				ifFalse: [
					(self choices at: 3) at: selectedIndex put: (self remainingNumbers at: selection).
					self remainingNumbers remove: (self remainingNumbers at: selection)]]