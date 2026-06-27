formatting
titleText

	^ self assembleRuns: {
		{self monster name, self newline.
			{TextEmphasis bold.
			TextColor color: self accentColor.
			TextFontReference toFont: (TextStyle defaultFont asPointSize: self titleFontSize)}}.
		{self headerText, self newline.
			{TextEmphasis italic}}}