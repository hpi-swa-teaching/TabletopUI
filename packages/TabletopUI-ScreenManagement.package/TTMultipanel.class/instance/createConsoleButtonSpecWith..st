button management
createConsoleButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0 corner: 0.25 @ 1);
		label: 'Console';
		action: #openConsole;
		color: #consoleColor;
		yourself