sending mail
deliverMailFrom: fromAddress to: recipientList text: messageText usingServer: serverName userName: uNameString password: pwdString
	"Deliver a single email to a list of users and then close the connection - for delivering multiple messages, it is best to create a single connection and send all mail over it.
	The serverName can include the port number - simply append ':587' for example to over ride the default port number.
	If uNameString or pwdString are non-nil, set the uid/pwd for the client. It is inadvisable to try setting a uid and not a pwd, or indeed vice versa.
	NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	| smtpClient |
	smtpClient := self new.
	
	uNameString ifNotNil:[smtpClient user: uNameString].
	pwdString ifNotNil:[smtpClient password: pwdString].
	smtpClient openOnHostNamed: serverName.
	[smtpClient mailFrom: fromAddress to: recipientList text: messageText.
	smtpClient quit]
		ensure: [smtpClient close]
