toolbuilder
buildWith: aToolBuilder children: aDictionary resizable: aBoolean

	| panelSpec |
	
	panelSpec := aToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		frame: (0 @ 0 corner: 1 @ 1);
		wantsResizeHandles: aBoolean;
		yourself.
	self addChildren: aDictionary to: panelSpec.
	
	^ aToolBuilder build: panelSpec