button management
create4thButtonSpecWith: aToolBuilder

	self flag: #todo.
	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0.6 @ 0 corner: 0.8 @ 1);
		label: 'yourName';
		action: #yourAction;
		color: #yourNameColor;
		yourself