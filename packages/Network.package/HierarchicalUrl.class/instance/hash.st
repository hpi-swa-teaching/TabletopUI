comparing
hash

	^ (((((((fragment hash
		bitXor: schemeName hash)
		bitXor: authority hash)
		bitXor: path hash)
		bitXor: query hash)
		bitXor: port hash)
		bitXor: username hash)
		bitXor: password hash)