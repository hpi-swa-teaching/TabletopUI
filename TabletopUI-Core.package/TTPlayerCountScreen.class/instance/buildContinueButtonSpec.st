toolbuilder
buildContinueButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: 'Continue';
		action: #continue;
		yourself
		