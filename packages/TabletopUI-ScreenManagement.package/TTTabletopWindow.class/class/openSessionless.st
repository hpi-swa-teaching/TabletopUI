toolbuilder
openSessionless

	| inst ref sessionmanager |
	ref := TTReferenceManager new.
	inst := self new.
	inst networkmanager: TTClientNetworkManager new.
	inst referenceManager: ref.
	inst networkmanager referenceManager: (ref).
	inst networkmanager referenceManager addEntry: inst forId: 'window'.
	
	sessionmanager:= TTClientSessionManager new.
	sessionmanager window: inst.
	sessionmanager networkmanager: inst networkmanager.
	inst sessionManager: sessionmanager.
	inst networkmanager referenceManager addEntry: sessionmanager forId: 'sessionmanager'.
	ToolBuilder open: (inst openPlayerCountScreen; yourself).
	^ inst.