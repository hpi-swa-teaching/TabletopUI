button management
updateButtonColors

	self buttonKeys do: [:key | self changed: (key asString , 'Color') asSymbol]