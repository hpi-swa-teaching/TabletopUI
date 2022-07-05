toolbuilder
proficiencyListSpec: aToolBuilder lookup: aLookupSymbol
	| proficiencyList childrenList frameCounter lineHeight |
	frameCounter := 0.
	lineHeight := 1.0 / ((model perform: aLookupSymbol) size + 1).
	proficiencyList := OrderedCollection new.
	(model perform: aLookupSymbol) keysAndValuesDo:
		[ :key :value | 
			proficiencyList add: {key asSymbol . value}].
	proficiencyList := proficiencyList sort: [:firstpair :secondpair | (firstpair at: 1) <= (secondpair at: 1)].
	childrenList :=	LinkedList new.
	proficiencyList do:
		[ :pair | 
		frameCounter := frameCounter + lineHeight.
		childrenList add: ((self proficiencySpec: aToolBuilder 
				name: (((pair at: 1), 'Label') asSymbol) 
				multiplier: (((pair at: 1), 'Multiplier') asSymbol) 
				multiplierOnChange: (('processInput', (pair at: 1), 'Multiplier:') asSymbol) 
				value: ((pair at: 1) asSymbol))
		frame: (0 @ frameCounter rect: 1 @ frameCounter + lineHeight))].
	
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Attributes';
		children: childrenList;
		yourself