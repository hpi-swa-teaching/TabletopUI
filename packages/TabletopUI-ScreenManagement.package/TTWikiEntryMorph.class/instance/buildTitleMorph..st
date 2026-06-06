accessing
buildTitleMorph: aTitleString

	| font |
	font := TextStyle default fontOfSize: self standardPointSize.
	^ StringMorph new font: font; contents: '> ' , aTitleString; hResizing: #spaceFill; yourself
