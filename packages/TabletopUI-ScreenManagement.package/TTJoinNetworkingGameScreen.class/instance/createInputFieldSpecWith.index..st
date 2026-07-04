toolbuilder
createInputFieldSpecWith: aToolBuilder index: aNumber

	^ aToolBuilder pluggableInputFieldSpec new
		model: self;
		getText: (self inputFieldSelectors at: aNumber);
		editText: (self inputFieldSetterSelectors at: aNumber);
		indicateUnacceptedChanges: false;
		help: (self inputFieldLabels at: aNumber);
		yourself