toolbuilder
buildWith: aToolbuilder

	^ aToolbuilder pluggablePanelSpec new
		model: self;
		children: {self createInputFieldSpecWith: aToolbuilder . self createAddNPCButtonSpecWith: aToolbuilder};
		frame: (0@0 corner: 1@1);
		yourself