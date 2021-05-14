toolbuilder
buildIncreaseButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: '+';
		action: #increaseCount;
		yourself
		