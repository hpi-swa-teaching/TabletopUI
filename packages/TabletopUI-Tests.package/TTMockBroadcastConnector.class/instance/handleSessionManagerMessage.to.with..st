sending
handleSessionManagerMessage: message to: object with: params

	object = 'sessionmanager' ifTrue: [
		self subscribers do: [:subscriber | subscriber perform: message asSymbol with: params].
		^ true].
	object = 'sessionmanagerUninitialized' ifTrue: [^ true].
	^ false