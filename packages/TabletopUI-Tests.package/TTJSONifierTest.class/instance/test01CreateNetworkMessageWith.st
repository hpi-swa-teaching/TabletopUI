testing
test01CreateNetworkMessageWith

	| params receivedParams createdDictionary message |
	params := Dictionary new.
	params at: 'val' put: 'hi'.
	message := TTJSONifier createNetworkMessage: #msg to: 'anId' with: params.
	createdDictionary := (Json readFrom: message asString readStream) as: Dictionary.
	receivedParams := (createdDictionary at: 'Params') as: Dictionary.
	self assert: (createdDictionary at: 'Obj-Id') = 'anId'.
	self assert: (receivedParams at: 'val') = 'hi'