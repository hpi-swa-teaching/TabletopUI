receiving
performFrom: messageDictionary
	"Executes an arbitrary message on an arbitrary local object as requested via network."

	| params object |
	params := (messageDictionary at: 'Params') as: Dictionary.
	object := self referenceManager resolve: (messageDictionary at: 'Obj-Id').
	(object notNil) ifTrue: [object perform: (messageDictionary at: 'Msg-Id') asSymbol with: params]