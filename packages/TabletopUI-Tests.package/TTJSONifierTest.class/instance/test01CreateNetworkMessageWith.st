testing
test01CreateNetworkMessageWith

	| params receivedParams createdDictionary message |
	params := Dictionary new.
	params at: 'test' put: 42.
	message := TTJSONifier createNetworkMessage: 'hello' to: 13 with: params.
	createdDictionary := (Json readFrom: message asString readStream) as: Dictionary.
	receivedParams := (createdDictionary at: 'Params') as: Dictionary.
	self assert: (createdDictionary at: 'Obj-Id') = 13.
	self assert: (receivedParams at: 'test') = 42