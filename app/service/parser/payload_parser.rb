class PayloadParser
    
    def self.extract(payload)

        formated_payload = {}
        condition = nil

        payload.each do |index, value|
            if index == "reservation"
                parser = Airbnb
                formated_payload = parser.extract(payload)
            else 
                parser = Agoda
                formated_payload = parser.extract(payload)
            end
            break
        end
        formated_payload
    end
end