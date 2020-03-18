module Twilio
    class Lookup
        ENDPOINT = 'https://twilio-lookup.p.rapidapi.com/PhoneNumbers/carrier?phoneNumber='

        def self.check_mobile(phone)
            response = Unirest.get(
                ENDPOINT + phone,
                headers: {
                    'X-RapidAPI-Host' => ENV.fetch('RAPID_API_HOST'),
                    'X-RapidAPI-Key' => ENV.fetch('RAPID_API_KEY')
                }
            )
            return false unless response.code == 200
            response.body['carrier']['type'] == 'mobile'
        end
    end
end