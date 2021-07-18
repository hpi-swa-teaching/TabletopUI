testing
test07RejectInvalidInput

	self 
		deny: (self screen isValid: '3abc');
		deny: (self screen isValid: '0');
		deny: (self screen isValid: '');
		deny: (self screen isValid: ' 3')