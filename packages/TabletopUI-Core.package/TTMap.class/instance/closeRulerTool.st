accessing
closeRulerTool
	self removeDependent: self rulerTool.
	self rulerTool morph delete.
	self tokens do: [ :token | token makeDraggable ]