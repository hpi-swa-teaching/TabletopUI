private
doSendMail

	(SMTPClient openOnHostNamed: self smtpServer port: self smtpServerPort)
		user: self smtpUser;
		password: self smtpPassword;
		login;
		mailFrom: mailMessage from
			to: ((mailMessage to findTokens: ',') collect: [:ea | ea withBlanksTrimmed])
			text: mailMessage asSendableText.