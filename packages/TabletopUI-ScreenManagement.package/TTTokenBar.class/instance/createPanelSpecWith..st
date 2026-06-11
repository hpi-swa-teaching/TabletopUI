toolbuilder
createPanelSpecWith: aToolbuilder

	^ aToolbuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: (self screen canCreateNpc
			ifTrue: [{
				self createInputFieldSpecWith: aToolbuilder.
				self createAddNPCButtonSpecWith: aToolbuilder}]
			ifFalse: [#()]);
		frame: (0 @ 0 corner: 1 @ 1);
		yourself