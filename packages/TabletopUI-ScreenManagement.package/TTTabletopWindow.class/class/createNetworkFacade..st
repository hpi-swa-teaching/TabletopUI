toolbuilder
createNetworkFacade: networkmanager

	| referencemanager  |
	referencemanager := TTReferenceManager new.
	networkmanager referenceManager: referencemanager.
	^TTNetworkFacade new 
		networkmanager: networkmanager;
		idAssigner: TTIdAssigner new.
	
	