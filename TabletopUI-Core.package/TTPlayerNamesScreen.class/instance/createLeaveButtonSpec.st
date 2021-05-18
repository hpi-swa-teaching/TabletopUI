toolbuilder
createLeaveButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: 'Leave';
		action: #leave;
		yourself