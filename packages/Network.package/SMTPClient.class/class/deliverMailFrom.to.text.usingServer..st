sending mail
deliverMailFrom: fromAddress to: recipientList text: messageText usingServer: serverName
	"Deliver a single email to a list of users and then close the connection - for delivering multiple messages, it is best to create a single connection and send all mail over it.
	The serverName can include the port number - simply append ':587' for example to over ride the default port number.
	No user name or password is used in this method; see deliverMailFrom:to:text:usingServer:userName:password: for more.
	NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	self deliverMailFrom: fromAddress to: recipientList text: messageText usingServer: serverName userName: nil password: nil
