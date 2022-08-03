toolbuilder
attributeListSpec: aToolBuilder
	^ aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'Attributes';
		children: (OrderedCollection new
			add: ((self attributeSpec: aToolBuilder name: #strengthLabel modifier: #strengthModifier stat: #strength onChange: #processInputStrength:) 
				frame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 0.15));
				yourself);
			
			add: ((self attributeSpec: aToolBuilder name: #dexterityLabel modifier: #dexterityModifier stat: #dexterity onChange: #processInputDexterity:) 
				frame: (LayoutFrame fractions: (0 @ 0.15 rect: 1 @ 0.3));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: #constitutionLabel modifier: #constitutionModifier stat: #constitution onChange: #processInputConstitution:) 
				frame: (LayoutFrame fractions: (0 @ 0.3 rect: 1 @ 0.45));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: #intelligenceLabel modifier: #intelligenceModifier stat: #intelligence onChange: #processInputIntelligence:) 
				frame: (LayoutFrame fractions: (0 @ 0.45 rect: 1 @ 0.6));
				yourself);
			
			add: ((self attributeSpec: aToolBuilder name: #wisdomLabel modifier: #wisdomModifier stat: #wisdom onChange: #processInputWisdom:) 
				frame: (LayoutFrame fractions: (0 @ 0.6 rect: 1 @ 0.75));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: #charismaLabel modifier: #charismaModifier stat: #charisma onChange: #processInputCharisma:) 
				frame: (LayoutFrame fractions: (0 @ 0.75 rect: 1 @ 0.9));
				yourself);
			
			 yourself);
		yourself