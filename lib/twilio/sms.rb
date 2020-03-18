module Twilio
    class SMS
        ENDPOINT = 'https://twilio-sms.p.rapidapi.com/2010-04-01/Accounts/' + ENV.fetch('TWILIO_ACCOUNT') + '/Messages.json?'

        def self.send_sms(message, phone)
            query = {
                from: ENV.fetch('RAPID_API_PHONE'),
                to: phone,
                body: message
        }.to_query
        response = Unirest.post(
            ENDPOINT + query,
            headers: {
                'X-RapidAPI-Host' => ENV.fetch('RAPID_API_HOST'),
                'X-RapidAPI-Key' => ENV.fetch('RAPID_API_KEY')
            }
        )
        response.code = 200
    end
end