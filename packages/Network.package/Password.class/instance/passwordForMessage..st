accessing
passwordForMessage: msg
	cache ifNotNil: [^self decode: cache]. "Our stored value is encoded"
	^self decode: (cache := self decode: (UIManager default requestPassword: 'Password for ', msg, ':')).