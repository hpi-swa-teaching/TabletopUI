accessing
connectedPlayersToolButtonColor

	self isConnectedPlayersToolActive
		ifTrue: [(self userInterfaceTheme uniformWindowColor luminance < self luminanceThreshold)
			ifTrue: [^ self lightButtonFocusColor].
			^  self darkButtonFocusColor].
	^  self userInterfaceTheme uniformWindowColor