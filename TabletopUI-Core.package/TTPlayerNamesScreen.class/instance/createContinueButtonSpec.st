toolbuilder
createContinueButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: 'Continue';
		action: #continue;
		yourself