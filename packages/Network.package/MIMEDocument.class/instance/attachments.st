accessing
attachments

	^ self parts select: [:part | 
		part contentDisposition = #attachment]