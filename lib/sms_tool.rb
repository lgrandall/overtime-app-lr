module SmsTool
	account_sid = 'AC3933b5adbea227b7536de9d0112ba841'
	auth_token = '729c0f3b283de6f7394ecfd78ad40f0e'

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(number:, message:)
    @client.messages.create(
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "+1#{number}",
      body: "#{message}"
    )
  end
end

SmsTool.send_sms(number: '4153048935', message: 'Here we go!')