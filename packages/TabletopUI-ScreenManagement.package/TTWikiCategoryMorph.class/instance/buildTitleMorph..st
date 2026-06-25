display
buildTitleMorph: aTitleString

	| font |
	font := TextStyle default fontOfSize: self class standardPointSize.
	^ StringMorph new 
		font: font; 
		emphasis: 1; 
		contents: '> ' , aTitleString; 
		color: self defaultTextColor;
		hResizing: #spaceFill
