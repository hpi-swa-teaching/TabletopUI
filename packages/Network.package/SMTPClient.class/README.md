This class implements the SMTP (mail sending) protocol specified in RFC 5321.

For convenient access use #mailFrom:to:text: for sending a simple string or #sendMailMessage:fromAddress: for sending a proper MailMessage object.

Supported commands are:

EHLO <SP> <domain> <CRLF>

MAIL <SP> FROM:<reverse-path> <CRLF>

RCPT <SP> TO:<forward-path> <CRLF>

DATA <CRLF>

VRFY <SP> <string> <CRLF>

QUIT <CRLF>
