private
addAttachment: stream named: attachmentName

	stream binary.
	mailMessage
		addAttachmentFrom: stream
		withName: attachmentName