testing
test04changeToNonExistingView

	| buttonMorphs |
	buttonMorphs :=  (self multiPanel dependents first) dependents.

	self multiPanel changeViewTo: #bla.
	buttonMorphs do: [ :button |
		self assert: button color equals: self multiPanel class unselectedButtonColor ].
	self assert: self multiPanel viewContainer submorphs equals: {}