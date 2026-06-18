display
styledLabel: aString
	
	| morph font |
	font := TextStyle default fontOfSize: self class standardPointSize.
	morph := StringMorph new.
	morph 
		font: font; 
		contents: aString.
	^ morph