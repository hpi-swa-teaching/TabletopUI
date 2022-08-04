toolbuilder
proficiencyListSpec: aToolBuilder lookup: aLookupSymbol

	| proficiencyList childrenList frameCounter lineHeight |
	
	frameCounter := 0.
	lineHeight := 1.0 / ((self model perform: aLookupSymbol) size + 1).
	proficiencyList := OrderedCollection new.
	(self model perform: aLookupSymbol) keysAndValuesDo:
		[ :key :value | 
			proficiencyList add: {key asSymbol . value}].
	proficiencyList := proficiencyList sort: [:firstpair :secondpair | (firstpair first) <= (secondpair first)].
	childrenList :=	LinkedList new.
	proficiencyList do:
		[ :pair | 
		frameCounter := frameCounter + lineHeight.
		childrenList add: ((self proficiencySpec: aToolBuilder 
			name: ((pair first), 'Label') asSymbol
			multiplier: ((pair first), 'Multiplier') asSymbol
			multiplierOnChange: ('processInput', (pair first), 'Multiplier:') asSymbol
			value: (pair first) asSymbol)
		frame: (0 @ frameCounter rect: 1 @ frameCounter + lineHeight))].
	
	^ aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'Attributes';
		children: childrenList;
		yourself