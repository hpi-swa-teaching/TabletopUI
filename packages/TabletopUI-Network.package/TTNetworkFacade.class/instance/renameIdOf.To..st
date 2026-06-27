wrapping
renameIdOf: aTTNetworkObject To: newId


	| oldId |
	
	oldId:= self getIdOf: aTTNetworkObject.
	self networkmanager referenceManager removeId: oldId.
	self networkmanager referenceManager addEntry: aTTNetworkObject forId: newId.