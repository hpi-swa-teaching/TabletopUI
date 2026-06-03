as yet unclassified
setAbilities

	| selection remainingValues |
	remainingValues := self remainingNumbers collect: [ :value |
		value = 0 ifTrue: ['Remove my choice'] ifFalse: [value]].
	
	selection := UIManager default
		chooseFrom: remainingValues
		title: ('Please choose your value for ', (((TTCharacterBuilderScreen options) at: 3) at: self selectedIndex)).
	
	selection = 0 
		ifFalse: [
			(self remainingNumbers at: selection) = 0 
				ifTrue: [((self choices at: 3) at: self selectedIndex) ~= 0
					ifTrue: [
						self remainingNumbers add: ((self choices at: 3) at: self selectedIndex).
						(self choices at: 3) at: self selectedIndex put: 0]]
				ifFalse: [
					(self choices at: 3) at: selectedIndex put: (self remainingNumbers at: selection).
					self remainingNumbers remove: (self remainingNumbers at: selection)]].
	self changed: #nameList