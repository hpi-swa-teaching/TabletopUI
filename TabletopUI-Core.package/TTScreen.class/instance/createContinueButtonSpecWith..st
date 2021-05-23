toolbuilder
createContinueButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		label: self continueButtonLabel;
		action: #continue;
		yourself