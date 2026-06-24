formatting
abilityCell: aLabel score: aScore modifier: aModifier

	^ self assembleRuns: {
		{aLabel, self newline.
			{TextEmphasis bold.
			TextColor color: self accentColor.
			TextAlignment centered}}.
		{aScore, self newline.
			{TextAlignment centered}}.
		{'(', (self signed: aModifier), ')'.
			{TextAlignment centered}}}
