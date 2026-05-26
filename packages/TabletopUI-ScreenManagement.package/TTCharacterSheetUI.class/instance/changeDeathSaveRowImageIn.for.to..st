input handling
changeDeathSaveRowImageIn: aMorph for: aString to: aNumber

	"button row morph should only have one submorph"
	| form |
	form := (TTImageLoader loadFormFromFileNamed: aString, aNumber asString , '.png')
		scaledToSize: self buttonRowExtent.
	aMorph submorphs first image: form
	 