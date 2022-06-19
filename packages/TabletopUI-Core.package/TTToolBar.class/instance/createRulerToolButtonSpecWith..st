toolbuilder
createRulerToolButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.2 corner: 1 @ 0.3);
		label: 'Ruler';
		action: #openRulerTool;
		yourself