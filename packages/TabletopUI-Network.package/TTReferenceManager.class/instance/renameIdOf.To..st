accessing
renameIdOf: aTTNetworkObject To: newId
	
	| oldId |
	oldId:= self getIdOf: aTTNetworkObject.
	self removeId: oldId.
	self addEntry: aTTNetworkObject forId: newId.