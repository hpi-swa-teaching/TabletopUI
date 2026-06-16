as yet unclassified
buildTitleMorph: aTitleString

	| font |
	font := TextStyle default fontOfSize: self standardPointSize.
	^ StringMorph new font: font; emphasis: 1; contents: '> ' , aTitleString; hResizing: #spaceFill; yourself
