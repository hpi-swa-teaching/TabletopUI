button management
createWikiButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (self buttonWidth * 3 @ 0 corner: 1 @ 1);
		label: 'Wiki';
		action: #openWiki;
		color: #wikiColor;
		yourself