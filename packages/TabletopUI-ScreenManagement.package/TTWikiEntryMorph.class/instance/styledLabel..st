display
styledLabel: aString
	
	| morph font |
	font := TextStyle default fontOfSize: self class standardPointSize.
	morph := StringMorph new.
	morph 
		font: font; 
		color: self defaultTextColor;
		contents: aString.
	^ morph