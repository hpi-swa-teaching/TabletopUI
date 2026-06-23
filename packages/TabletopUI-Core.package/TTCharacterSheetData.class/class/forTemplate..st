structure
forTemplate: aSymbol
	
	"catch potential erroneous call"
	(self availableTemplates includes: aSymbol) ifFalse: [^ self error: 'Unknown template: ', aSymbol printString].
	^ self perform: aSymbol