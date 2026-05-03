toolbuilder
createWindowSpecWith: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: #dialogTitle;
		children: OrderedCollection new.