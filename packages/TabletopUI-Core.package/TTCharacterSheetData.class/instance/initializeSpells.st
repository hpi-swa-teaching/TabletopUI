setup - initialization
initializeSpells

	"nested dictionary with string and boolean per each level and slot"
	self spells: Dictionary new.
	0 to: self class maximumSpellcastingLevel do: [:level |
		| levelDictionary |
		levelDictionary := Dictionary new.
		1 to: self class spellCount do: [:slot |
			levelDictionary at: slot put: (Dictionary new
				at: #name put: '';
				at: #equipped put: 0;
				yourself)].
		self spells at: level put: levelDictionary]