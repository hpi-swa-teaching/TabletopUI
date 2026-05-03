private
login

	self initiateSession.

	self user ifNil: [^self].

	["repeat both USER and PASS since some servers require it"
	self sendCommand: 'USER ', self user.

	"331 Password required"
	self lookForCode: 331.
	
	self sendCommand: 'PASS ', self password."will ask user, if needed. An extra delight is that either accepting an empty string or cancelling the dialog will return an empty string. So how do we know whether to try to log in with an empty password or give up?"

	"230 User logged in"
	([self lookForCode: 230.]
		on: TelnetProtocolError
		do: [false]) == false
		] whileTrue: [
			(LoginFailedException protocolInstance: self) signal: self lastResponse]

