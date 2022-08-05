toolbuilder
createPanelSpecWith: aToolbuilder

	^ aToolbuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: {
			self createInputFieldSpecWith: aToolbuilder . 
			self createAddNPCButtonSpecWith: aToolbuilder};
		frame: (0 @ 0 corner: 1 @ 1);
		yourself