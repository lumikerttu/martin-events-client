class SendMail
	def send
		from = SendGrid::Email.new(email: 'torud.tammed@mail.com')
		to = SendGrid::Email.new(email: 'kabi.kannud@hotmail.com')
		subject = 'Kutse'
		content = SendGrid::Content.new(type: 'text/plain', value: 'some kind of text')
		mail = SendGrid::Mail.new(from, subject, to, content)

		sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
		response = sg.client.mail._('send').post(request_body: mail.to_json)
	end
end