accessing
toolBar: aTTToolBar

	toolBar := aTTToolBar.
	self toolBar
		characterAdministration: self characterAdministration;
		inputField: self inputField;
		map: self map.