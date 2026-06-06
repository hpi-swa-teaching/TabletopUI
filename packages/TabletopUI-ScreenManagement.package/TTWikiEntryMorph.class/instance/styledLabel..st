accessing
styledLabel: aString
	
	| morph font |
	font := TextStyle default fontOfSize: self standardPointSize.
	morph := StringMorph new.
	morph font: font; contents: aString.
	^ morph