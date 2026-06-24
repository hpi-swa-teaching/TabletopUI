structure
availableTemplates

	| templates |
	templates := (self class organization listAtCategoryNamed: 'templates') asOrderedCollection.
	templates add: 'load character'.
	templates add: 'build character'.
	^ templates