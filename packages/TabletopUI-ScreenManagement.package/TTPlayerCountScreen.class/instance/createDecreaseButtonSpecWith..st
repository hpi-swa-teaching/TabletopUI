toolbuilder
createDecreaseButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		label: '-';
		action: #decreaseCount;
		yourself
		