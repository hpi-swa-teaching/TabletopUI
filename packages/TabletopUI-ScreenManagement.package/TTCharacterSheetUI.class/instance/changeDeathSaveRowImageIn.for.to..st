input handling
changeDeathSaveRowImageIn: aMorph for: aString to: aNumber

	"button row morph should only have one submorph"
	aMorph submorphs first image: (self formForDeathSave: aString at: aNumber)
	 