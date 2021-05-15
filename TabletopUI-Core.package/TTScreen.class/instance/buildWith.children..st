toolbuilder
buildWith: aMorphicToolBuilder children: aDictionary

	| panelSpec |
	
	panelSpec := aMorphicToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		frame: (0 @ 0 corner: 1 @ 1).
	self addChildren: aDictionary to: panelSpec.
	
	^ aMorphicToolBuilder build: panelSpec