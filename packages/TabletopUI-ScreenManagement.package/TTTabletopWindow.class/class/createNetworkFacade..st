instantiation
createNetworkFacade: networkManager

	| referenceManager |
	referenceManager := TTReferenceManager new.
	networkManager referenceManager: referenceManager.
	^ TTNetworkFacade new networkManager: networkManager