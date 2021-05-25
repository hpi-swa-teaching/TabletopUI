toolbuilder
createLeaveButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		label: self leaveButtonLabel;
		action: #leave;
		yourself