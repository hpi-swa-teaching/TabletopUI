toolbuilder
buildWith: aMorphicToolBuilder children: aDictionary

	| panelSpec |
	panelSpec := aMorphicToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new.
	self addChildren: aDictionary to: panelSpec.
	
	^ panelSpec