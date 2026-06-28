formatting
assembleRuns: aCollectionOfRuns

	"A 'run' is a contiguous span of characters that all share the same formatting.
	Each run is an Array { aString. anArrayOfTextAttributes }. Builds a single
	Text by concatenating the strings and applying each run's attributes to its range."
	| text |
	text := Text new.
	aCollectionOfRuns do: [:run | | start |
		start := text size + 1.
		text := text, (Text fromString: run first).
		run second do: [:attribute | text addAttribute: attribute from: start to: text size]].
	^ text