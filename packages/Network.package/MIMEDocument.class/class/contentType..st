private
contentType: aString

	^ self new
		contentTypeHeaderValue: (MIMEHeaderValue fromMIMEHeader: aString);
		yourself