toolbuilder
buildDecreaseButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: '-';
		action: #decreaseCount;
		yourself
		