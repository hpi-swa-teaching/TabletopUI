accessing
styledText: aString

	| font attribute |
	font := TextStyle default fontOfSize: self standardPointSize.
	attribute := TextFontReference toFont: font.
	^ (Text fromString: aString) addAttribute: attribute; yourself