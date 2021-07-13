toolbuilder
createIncreaseButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		label: '+';
		action: #increaseCount;
		yourself
		