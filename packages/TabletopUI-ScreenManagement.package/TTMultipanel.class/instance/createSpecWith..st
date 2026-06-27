toolbuilder
createSpecWith: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: (self buttonKeys collect: [:key | self createButtonSpecWith: aToolBuilder forViewSymbol: key]);
		frame: (0.75 @ 0 corner: 1 @ 0.1);
		yourself