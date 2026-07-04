initialization
newWithNetworkFacade: aNetworkFacade Window: aTTTabletopWindow

	| object |
	object := self newWith: aTTTabletopWindow.
	object networkFacade: aNetworkFacade.
	^ object