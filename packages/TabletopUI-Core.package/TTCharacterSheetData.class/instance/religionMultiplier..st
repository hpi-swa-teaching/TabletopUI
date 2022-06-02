dice roll modifiers
religionMultiplier: aText

	self skillsLookup at: #religion put: ((aText asNumber min: 2) max: 0)