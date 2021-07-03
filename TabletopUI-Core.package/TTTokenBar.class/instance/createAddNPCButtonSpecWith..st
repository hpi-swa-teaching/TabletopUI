toolbuilder
createAddNPCButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.5 corner: 1 @ 1);
		label: 'Add NPC';
		action: #validateAndCreateNPC;
		yourself