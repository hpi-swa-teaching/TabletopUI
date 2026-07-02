accessing
nameListWithDoubleClickOptionsOld

	| names |
	
	names := OrderedCollection new.
	
	self optionsForCurrentStep withIndexDo: [ :name :index |
		| currentChoice |
		currentChoice := self choicesForCurrentStep at: (self optionsForCurrentStep at: index).	
		(#(0 '0') includes: currentChoice) 
			ifTrue: [currentChoice := 'not selected'].
		names add: '[ ', currentChoice ,' ] ', name].
	
	^ names