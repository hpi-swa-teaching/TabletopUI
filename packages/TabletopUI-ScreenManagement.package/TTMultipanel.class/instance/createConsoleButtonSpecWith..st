button management
createConsoleButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0 corner: self buttonWidth @ 1);
		label: 'Console';
		action: #openConsole;
		color: #consoleColor;
		yourself