serializing
attachmentText

	^ Text
		string: ('[{1}]' format: {self name ifNil: ['attachment' translated]})
		attributes: {TextMessageLink toDocument: self}