setup - initialization
initializeInformation

	self information: Dictionary new.
	#(personalityTraits ideals bonds flaws backstory featuresAndTraits organizations proficienciesAndLanguages)
		do: [:key | self information at: key put: '']