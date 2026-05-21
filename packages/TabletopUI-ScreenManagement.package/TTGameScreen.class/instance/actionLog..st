accessing
actionLog: aTTActionLog

	actionLog := aTTActionLog.
	self actionLog networkmanager: self networkmanager.
	self networkmanager referenceManager addEntry: aTTActionLog forId: 'chat'