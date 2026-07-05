toolbuilder
createNewMapToolButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.3 corner: 1 @ 0.4);
		label: 'Add Map';
		action: #addNewMap;
		color: #newMapToolButtonColor;
		yourself
