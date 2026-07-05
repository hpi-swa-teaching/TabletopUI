sending
handleMapUpdateMessage: message to: object with: params

	object = 'token_Alice' ifTrue: [
		(params at: #receiver) = 'server'
			ifTrue: [self server tokens first perform: message asSymbol with: params]
			ifFalse: [
				self subscribers do: [:subscriber |
					subscriber tokens first
						perform: message asSymbol
						with: params]].
		^ true].
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
		^ true].
	^ false