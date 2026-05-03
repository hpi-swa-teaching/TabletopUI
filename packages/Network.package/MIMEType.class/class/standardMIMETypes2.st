class initialization
standardMIMETypes2
	"MIMEType standardMimeTypes2"
	"We had to split this method because of the 256 literal limit in methods."
	| mimeTypes |
	mimeTypes := Dictionary new: 100.
	mimeTypes
		at: 'nc' put: #('application/x-netcdf');
		at: 'shar' put: #('application/x-shar');
		at: 'pgp' put: #('application/x-pgp-plugin');
		at: 'texi' put: #('application/x-texinfo');
		at: 'z' put: #('application/x-compress');
		at: 'aiff' put: #('audio/aiff' 'audio/x-aiff');
		at: 'bin' put: #('application/octet-stream');
		at: 'pwz' put: #('application/vnd.ms-powerpoint');
		at: 'rtc' put: #('application/rtc');
		at: 'asx' put: #('video/x-ms-asf');
		at: 'ief' put: #('image/ief');
		at: 'ps' put: #('application/postscript');
		at: 'xls' put: #('application/vnd.ms-excel');
		at: 'vrml' put: #('model/vrml');
		at: 'jpeg' put: #('image/jpeg');
		at: 'dwg' put: #('image/vnd');
		at: 'dms' put: #('application/octet-stream');
		at: 'tif' put: #('image/tiff');
		at: 'roff' put: #('application/x-troff');
		at: 'midi' put: #('audio/midi');
		at: 'eps' put: #('application/postscript');
		at: 'man' put: #('application/x-troff-man');
		at: 'sv4cpio' put: #('application/x-sv4cpio');
		at: 'tr' put: #('application/x-troff');
		at: 'dxf' put: #('image/vnd');
		at: 'rtf' put: #('text/rtf' 'application/rtf');
		at: 'frl' put: #('application/freeloader');
		at: 'xlb' put: #('application/vnd.ms-excel');
		at: 'pl' put: #('text/plain');
		at: 'snd' put: #('audio/basic');
		at: 'texinfo' put: #('application/x-texinfo');
		at: 'tbk' put: #('application/toolbook');
		at: 'ppm' put: #('image/x-portable-pixmap');
		at: 'cht' put: #('audio/x-dspeech');
		at: 'bmp' put: #('image/bmp');
		at: 'vgm' put: #('video/x-videogram');
		at: 'fh5' put: #('image/x-freehand');
		at: 'src' put: #('application/x-wais-source');
		at: 'm4' put: #('audio/x-mp4-audio');
		at: 'm4b' put: #('audio/x-quicktime-protected-b');
		at: 'm4p' put: #('audio/x-quicktime-protected');
		at: 'mp4v' put: #('video/x-mp4-video');
		at: 'm4v' put: #('video/x-mp4-video');
		at: 'mp4' put: #('video/x-mp4-video');
		at: 'wma' put: #('audio/x-ms-wma');
		at: 'wmv' put: #('video/x-ms-wmv');
		at: 'wm' put: #('video/x-ms-wm');
		at: 'png' put: #('image/png');
		yourself.
	^mimeTypes
