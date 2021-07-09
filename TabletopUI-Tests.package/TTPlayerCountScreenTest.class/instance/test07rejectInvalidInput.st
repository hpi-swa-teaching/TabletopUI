testing
test07rejectInvalidInput

	self deny: (self screen isValid: '3abc').
	self deny: (self screen isValid: '0').
	self deny: (self screen isValid: '').
	self deny: (self screen isValid: ' 3')