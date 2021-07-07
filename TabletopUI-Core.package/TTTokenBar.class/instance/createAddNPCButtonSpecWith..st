toolbuilder
createAddNPCButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.0 corner: 1 @ 0.5);
		label: 'Add NPC';
		action: #validateAndCreateNPC;
		yourself