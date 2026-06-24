formatting
rightColumnText

	| runs addSection |
	runs := OrderedCollection new.
	addSection := [:title :entries |
		entries isEmpty ifFalse: [
			runs add: {title, self newline.
				{TextEmphasis bold.
				TextColor color: self accentColor.
				TextFontReference toFont: (TextStyle defaultFont asPointSize: 16)}}.
			entries do: [:each | | name desc |
				name := each at: #name ifAbsent: [''].
				desc := each at: #desc ifAbsent: [''].
				name isEmpty ifFalse: [runs add: {name, '. '. {TextEmphasis bold}}].
				runs add: {desc, self newline, self newline. {}}]]].

	addSection value: 'Traits' value: self sheet traits.
	addSection value: 'Actions' value: self sheet actions.
	addSection value: 'Legendary Actions' value: self sheet legendaryActions.

	^ self assembleRuns: runs
