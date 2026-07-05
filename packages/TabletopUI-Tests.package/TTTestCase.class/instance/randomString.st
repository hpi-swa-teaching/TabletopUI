randomized-testing
randomString

	| chars stream |
	chars := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'.
	stream := WriteStream on: String new.
	10 timesRepeat: [stream nextPut: (chars at: chars size atRandom)].
	^ stream contents