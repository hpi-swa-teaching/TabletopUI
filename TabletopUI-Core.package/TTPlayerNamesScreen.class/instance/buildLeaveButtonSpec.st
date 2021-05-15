as yet unclassified
buildLeaveButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: 'Leave';
		action: #leave;
		yourself