toolbuilder
addLeaveButtonTo: aDictionary

	aDictionary add: ((0.6 @ 0.1) corner: ((0.4 + self class inputFieldWidth) @ (0.2))) -> [self createLeaveButtonSpec]