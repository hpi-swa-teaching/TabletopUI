toolbuilder
createSpecWith: aToolBuilder resizable: aBoolean

	^ aToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		frame: (0 @ 0 corner: 1 @ 1);
		wantsResizeHandles: aBoolean;
		yourself