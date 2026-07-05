sending
handleContextManagerMessage: message to: object with: params

	object = 'contextManager' ifTrue: [
		(params at: #receiver) = 'server'
			ifTrue: [
				self server parser contextManager
					perform: message asSymbol
					with: params]
			ifFalse: [
				self subscribers do: [:subscriber |
					subscriber parser contextManager
						perform: message asSymbol
						with: params]].
		^ true].
	^ false