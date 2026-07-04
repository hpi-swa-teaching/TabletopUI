instantiation
createNetworkFacade: networkManager

	| referenceManager |
	referenceManager := TTReferenceManager new.
	networkManager referenceManager: referenceManager.
	^ TTNetworkFacade new
		networkmanager: networkManager;
		idAssigner: TTIdAssigner new