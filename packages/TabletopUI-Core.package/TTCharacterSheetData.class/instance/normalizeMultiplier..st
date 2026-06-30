dice roll modifiers
normalizeMultiplier: aText

	^ (aText asNumber min: self maxMultiplier) max: 0