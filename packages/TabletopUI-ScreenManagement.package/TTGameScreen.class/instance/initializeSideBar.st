initialization
initializeSideBar

	self
		imageBar: (self networkFacade instantiate: TTImageBar withId: 'mapSelector');
		tokenBar: ((TTTokenBar newWithMap: self map characterAdministration: self characterAdministration)
			screen: self;
			yourself);
		toolBar: (self networkFacade instantiate: TTToolBar withId: 'toolBar').
	self
		addDependent: self imageBar;
		addDependent: self tokenBar;
		addDependent: self toolBar