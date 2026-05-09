initialization
newWith: aTTCharacterAdministration toolBar: aTTToolBar

	^ self new
		characterAdministration: aTTCharacterAdministration;
		toolBar: aTTToolBar;
		selectedIndex: 1
		yourself

	