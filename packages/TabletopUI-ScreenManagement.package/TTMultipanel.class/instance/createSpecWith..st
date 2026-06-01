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
		frame: (0 @ 0 corner: 3 @ 1);
		yourself