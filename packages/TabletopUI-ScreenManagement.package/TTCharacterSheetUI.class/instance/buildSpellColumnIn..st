build
buildSpellColumnIn: aMorph

	| yDistanceBetweenBlocks yDistanceInBlock |
	yDistanceBetweenBlocks := 181.
	yDistanceInBlock := 30.
	5 to: TTCharacterSheetData maximumSpellcastingLevel do: [:level |
		self buildSpellLevel: level
			at: 20 @ (yDistanceBetweenBlocks * (level - 5) + 20)
			in: aMorph
			yDistance: yDistanceInBlock]