as yet unclassified
send: message to: object with: params

	(message = 'loadState:' or: [message = #loadState:]) ifTrue: [
		self subscribers do: [:subscriber | subscriber loadState: params].
		^ self].
	(message = #handleClientUpdate: or: [message = 'handleClientUpdate:']) ifTrue: [
		self server handleClientUpdate: params.
		^ self].
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
		^ self].
	
	self server perform: message asSymbol with: params