toolbuilder
buildWith: aToolBuilder children: aDictionary resizable: aBoolean

	| panelSpec |
	
	panelSpec :=  self createSpecWith: aToolBuilder resizable: aBoolean.
	self addChildren: aDictionary to: panelSpec.
	
	^ aToolBuilder build: panelSpec