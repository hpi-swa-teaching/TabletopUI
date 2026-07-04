instantiation
instantiateScreen: aScreenSubclass WithId: id Window: window

	| object |
	object := aScreenSubclass
		newWithNetworkFacade: (TTGamescreenNetworkFacadeDecorator newWith: self)
		Window: window.
	self networkmanager referenceManager addEntry: object forId: id.
	^ object