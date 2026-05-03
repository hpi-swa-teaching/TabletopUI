accessing
contentDispositionHeaderValue

	^ self fieldNamed: 'content-disposition' ifAbsent: [MIMEHeaderValue fromMIMEHeader: 'inline']