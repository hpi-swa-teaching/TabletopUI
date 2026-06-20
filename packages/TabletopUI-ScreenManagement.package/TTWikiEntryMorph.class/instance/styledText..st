display
styledText: aString

	| font attribute |
	font := TextStyle default fontOfSize: self class standardPointSize.
	attribute := TextFontReference toFont: font.
	^ (Text fromString: aString) addAttribute: attribute