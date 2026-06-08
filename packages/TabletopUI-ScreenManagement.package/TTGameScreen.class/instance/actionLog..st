accessing
actionLog: aTTActionLog

	actionLog := aTTActionLog.
	self actionLog networkManager: self networkManager.
	self networkManager referenceManager addEntry: aTTActionLog forId: 'chat'