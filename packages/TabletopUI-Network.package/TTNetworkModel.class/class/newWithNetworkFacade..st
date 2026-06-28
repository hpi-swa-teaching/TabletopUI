as yet unclassified
newWithNetworkFacade: aTTNetworkFacade

	| inst |
	inst := self basicNew.
	inst
		networkFacade: aTTNetworkFacade;
		initialize.
	^ inst