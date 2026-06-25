display
buildTitleMorph: aTitleString

	| morph font |
	font := TextStyle default fontOfSize: 30.
	morph := StringMorph new. 
	morph 
		font: font; 
		emphasis: 4; 
		contents: '> ' , aTitleString; 
		color: self defaultTextColor;
		hResizing: #spaceFill. 
	^ morph
