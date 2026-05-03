public protocol
mailFrom: sender to: recipientList text: messageText
	"deliver this mail to a list of users.  NOTE: the recipient list should be a collection of simple internet style addresses -- no '<>' or '()' stuff"

	self closeConnectionOn421: [
		messageText isAsciiString 
			ifTrue: [self mailFrom: sender]
			ifFalse: [
				(self serverSupports: '8BITMIME') 
					ifTrue: ["We can still send it (assuming it is a MIME document that contains encoding info)"
						self mailFrom: sender options: {#BODY -> '8BITMIME'} asDictionary]
					ifFalse: ["There is no way we can send this safely"
						SMTPValueError signal: 'Server does not support non-ascii content, but message contains non-ascii characters']].
		recipientList do: [:recipient |
			self recipient: recipient].
		self data: messageText.]