updating
update: anAspect
	
	super update: anAspect.
	(anAspect = #dropEvent) ifTrue: [self changed: #mapState]