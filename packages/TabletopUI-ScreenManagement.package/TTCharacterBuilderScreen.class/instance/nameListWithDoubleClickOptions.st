accessing
nameListWithDoubleClickOptions

	| names currentChoice |
	names := OrderedCollection new.
	
	self optionsForCurrentStep withIndexDo: [ :name :index |
		currentChoice := self choicesForCurrentStep at: (self optionsForCurrentStep at: index).	
		(#(0 '0') includes: currentChoice) 
			ifTrue: [currentChoice := 'not selected'].
		names add: '[ ', currentChoice ,' ] ', name].
	
	^ names