dis/connect
openFTPClient

	| loginSuccessful |
	client ifNotNil:
		[client isConnected
			ifTrue: [^client]
			ifFalse: [client := nil]].
	client := FTPClient openOnHostNamed: server.
	client ifNil: [^nil].
	loginSuccessful := false.
	[loginSuccessful]
		whileFalse: 
			[[loginSuccessful := true.
			client loginUser: self user password: self password]
				on: LoginFailedException
				do: [:ex | 
					| what |
					passwordHolder := nil.
					what := Project uiManager
								chooseOptionFrom: #('enter password' 'give up') 
								title: 'Would you like to try another password?'.
					what = 1 ifFalse: [ ^nil].
					loginSuccessful := false]].
	client changeDirectoryTo: directory.
	^client