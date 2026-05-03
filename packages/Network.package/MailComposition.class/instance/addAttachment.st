actions
addAttachment

	self saveFields.
	(UIManager default chooseFileMatching: '*' label: 'Choose attachment') ifNotNil:
		[:fileName |
		FileStream readOnlyFileNamed: fileName do: 
			[:file |
			file binary.
			mailMessage
				addAttachmentFrom: file
				withName: (FileDirectory localNameFor: fileName)].
			self changed: #messageText]. 