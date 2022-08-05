toolbuilder
createRulerToolButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.1 corner: 1 @ 0.2);
		label: 'Ruler';
		action: #openRulerTool;
		color: #rulerToolButtonColor;
		yourself