sending
send: message to: object with: params

	(object = 'sessionmanager' and: [message ~= 'loadState:']) ifTrue: [
		self subscribers do: [:subscriber | subscriber perform: message asSymbol with: params].
		^ self].
	(object = 'sessionmanager' and: [message = 'loadState:']) ifTrue: [^ self].
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
	object = 'token_Alice' ifTrue: [
		(params at: #receiver) = 'server'
			ifTrue: [self server tokens first perform: message asSymbol with: params]
			ifFalse: [
				self subscribers do: [:subscriber |
					subscriber tokens first
						perform: message asSymbol
						with: params]].
		^ self].
	object = '2_2' ifTrue: [
		(params at: #receiver) = 'server'
			ifTrue: [
				(self server tiles at: 2 at: 2)
					perform: message asSymbol
					with: params]
			ifFalse: [
				self subscribers do: [:subscriber |
					(subscriber tiles at: 2 at: 2)
						perform: message asSymbol
						with: params]].
		^ self].
	
	self server perform: message asSymbol with: params