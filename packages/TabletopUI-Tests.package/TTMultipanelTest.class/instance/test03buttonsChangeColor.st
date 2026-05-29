tests
test03buttonsChangeColor

	| buttonMorphs |
	buttonMorphs :=  (self multiPanel dependents at: 1) dependents.

	self multiPanel openPlayers.
	
	buttonMorphs do: [ :button |
		button label = 'Player' 
			ifTrue: [ self assert: button color equals: self multiPanel class selectedButtonColor ]
			ifFalse: [ self assert: button color equals: self multiPanel class unselectedButtonColor ]]