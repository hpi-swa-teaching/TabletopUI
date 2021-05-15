toolbuilder
buildWith: aToolBuilder children: aDictionary

	| panelSpec |
	
	panelSpec := aToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		frame: (0 @ 0 corner: 1 @ 1).
	self addChildren: aDictionary to: panelSpec.
	
	^ aToolBuilder build: panelSpec