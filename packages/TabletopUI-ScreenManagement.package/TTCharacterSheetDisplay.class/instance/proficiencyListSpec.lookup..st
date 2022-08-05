toolbuilder
proficiencyListSpec: aToolBuilder lookup: aLookupSymbol

	| childrenList frameCounter lineHeight |
	
	frameCounter := 0.
	lineHeight := 1.0 / ((self model perform: aLookupSymbol) size + 1).
	
	childrenList :=	LinkedList new.
	(self model perform: aLookupSymbol) keysAndValuesDo:
		[:aKey :aValue | 
		frameCounter := frameCounter + lineHeight.
		childrenList add: ((self proficiencySpec: aToolBuilder 
			name: (aKey, 'Label') asSymbol
			multiplier: (aKey, 'Multiplier') asSymbol
			multiplierOnChange: ('processInput', aKey, 'Multiplier:') asSymbol
			value: aKey asSymbol)
		frame: (0 @ frameCounter rect: 1 @ frameCounter + lineHeight))].
	
	^ aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'Attributes';
		children: childrenList;
		yourself