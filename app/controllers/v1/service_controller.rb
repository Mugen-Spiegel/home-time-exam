module V1
    class ServiceController < ApplicationController
        skip_before_action :verify_authenticity_token
        def airbnb
            parser = Airbnb
            payload = parser.extract(params)
            Guest.create_new_entry(payload)
        end
        
        def agoda
            parser = Agoda
            payload = parser.extract(params)
            Guest.create_new_entry(payload)
        end
    end
end
