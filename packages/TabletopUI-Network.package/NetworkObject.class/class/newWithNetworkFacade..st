as yet unclassified
newWithNetworkFacade: aTTNetworkFacade

	| inst |
	inst := self new.
	inst networkFacade: aTTNetworkFacade.
	^ inst