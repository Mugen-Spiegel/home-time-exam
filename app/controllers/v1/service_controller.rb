module V1
    class ServiceController < ApplicationController
        skip_before_action :verify_authenticity_token
        def reservation
            parser = PayloadParser
            payload = parser.extract(params)
            Guest.create_new_entry(payload)
        end
    end
end
