as yet unclassified
buildAndOpenWindow

	| builder windowSpec |
	builder := ToolBuilder default.
	windowSpec := builder pluggableWindowSpec new.
	windowSpec label: 'placy'.
	windowSpec extent: 800@500.
	builder open: windowSpec