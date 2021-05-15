as yet unclassified
buildContinueButtonSpec

	^ PluggableActionButtonSpec new
		model: self;
		label: 'Continue';
		action: #continue;
		yourself