forms
playerForm

	^ TTImageLoader loadFormFromFileNamed: 'character_token_blue.png'
	"| filePath imageForm |

	""Passe den Pfad zu deinem Bild an (unterstützt werden .png, .jpg, .bmp)""
	filePath := '/home/theresa/Downloads/tiger.png'.
	
	""Bild aus dem Dateisystem laden""
	imageForm := Form fromFileNamed: filePath.
	
	^imageForm"