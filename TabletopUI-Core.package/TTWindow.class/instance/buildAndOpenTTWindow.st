toolbuilder
buildAndOpenTTWindow

	| builder windowSpec |
	
	builder := ToolBuilder default.
	windowSpec := self buildTTWindowWith: builder.
	
	builder open: windowSpec