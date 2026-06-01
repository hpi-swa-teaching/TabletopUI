button management
createSpecWith: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: {
			self createConsoleButtonSpecWith: aToolBuilder.
			self createMonstersButtonSpecWith: aToolBuilder.
			self createPlayersButtonSpecWith: aToolBuilder.
			self createWikiButtonSpecWith: aToolBuilder};
		frame: (0.75 @ 0 corner: 1 @ 0.1);
		yourself