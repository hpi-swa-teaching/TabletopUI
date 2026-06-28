as yet unclassified
test04ImageEncode

	| serializedImage |
	serializedImage := TTSerializer serializeImage: Form extraWizard.
	
	self assert: serializedImage class = ByteString