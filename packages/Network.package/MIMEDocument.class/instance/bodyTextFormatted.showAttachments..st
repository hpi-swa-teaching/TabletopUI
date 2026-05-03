serializing
bodyTextFormatted: shouldPreferRichText showAttachments: shouldShowAttachments
	"Answer a string or text representing the content of the receiver."

	self isMultipart ifTrue: [
		self isMultipartAlternative ifTrue: [
			"https://www.w3.org/Protocols/rfc1341/7_2_Multipart.html"
			| preferredTypes |
			preferredTypes := #('text/plain' 'text/html').
			shouldPreferRichText ifTrue: [preferredTypes := preferredTypes reversed].
			preferredTypes do: [:format |
				self parts do: [:part |
					(part containsInlineContentType: format) ifTrue: [
						^ part bodyTextFormatted: shouldPreferRichText showAttachments: shouldShowAttachments]]].
			
			"fallback"
			^ self parts first bodyTextFormatted: shouldPreferRichText showAttachments: shouldShowAttachments].
		
		self subType = 'related' ifTrue: [
			"RFC2387"
			^ [self parts first bodyTextFormatted: shouldPreferRichText showAttachments: shouldShowAttachments]
				on: MIMEContentRequest do: [:request |
					(self partWithContentID: request cid) ifNotNil: [:part |
						request resume: part].
					request pass]].
		
		^ Text streamContents: [:stream |
			| sep |
			sep := false.
			self parts do: [:part |
				sep := (part contentDisposition = 'inline'
					ifTrue: [
						sep ifTrue: [stream cr].
						stream nextPutAll: (part bodyTextFormatted: shouldPreferRichText showAttachments: shouldShowAttachments)]
					ifFalse: [
						shouldShowAttachments
							ifTrue: [
								sep ifTrue: [stream cr].
								stream nextPutAll: part attachmentText]]) notNil]]].
	
	self contentType = 'message/rfc822' ifTrue: [
		"embedded message"
		^ (MailMessage from: self content) bodyTextFormatted: shouldPreferRichText showAttachments: shouldShowAttachments].
	
	self isHTML ifTrue: [
		(Smalltalk classNamed: #HtmlReadWriter) ifNotNil: [:readerClass |
			^ (readerClass on: self content readStream)
				shallEvaluateResources: false;
				nextText]].
	
	self isPlaintext ifTrue: [
		^ self plainTextWithResolvedCIDReferences: shouldPreferRichText].
	
	self containsViewableImage ifTrue: [
		| form scaleFactor |
		form := self image.
		(scaleFactor := RealEstateAgent scaleFactor) = 1.0
			ifFalse: [form := form scaledToSize: form extent * scaleFactor].
		^ Text string: Character startOfHeader asString attribute: form asTextAnchor].
	
	"fallback"
	^ self content asString