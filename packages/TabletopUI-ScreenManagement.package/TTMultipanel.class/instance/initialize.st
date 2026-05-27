button management
initialize

	super initialize.
	self activeView ifNil: (self activeView: #players; changed: #activeView)
