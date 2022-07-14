accessing
rulerToolButtonColor

	self isRulerToolActive
		ifTrue: [(self userInterfaceTheme uniformWindowColor luminance < 0.5)
			ifTrue: [^ self lightButtonFocusColor].
			^  self darkButtonFocusColor].
	^  self userInterfaceTheme uniformWindowColor.