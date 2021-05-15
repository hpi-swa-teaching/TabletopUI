toolbuilder
createContinueButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Continue';
		action: #continue;
		yourself
		