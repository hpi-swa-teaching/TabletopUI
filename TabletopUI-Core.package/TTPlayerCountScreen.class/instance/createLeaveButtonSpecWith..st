toolbuilder
createLeaveButtonSpecWith: aToolBuilder

    ^ aToolBuilder pluggableActionButtonSpec new
        model: self;
        label: 'Leave';
        action: #leave;
        yourself