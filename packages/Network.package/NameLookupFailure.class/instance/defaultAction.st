handling
defaultAction
	"Backward compatibility"
	| response |
	response := (Project uiManager
					chooseOptionFrom: #( 'Retry' 'Give Up')
					title: self messageText).
	^ response = 2 ifFalse: [self retry]