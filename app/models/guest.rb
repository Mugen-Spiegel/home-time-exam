class Guest < ApplicationRecord
    has_many :reservation

    def self.create_new_entry(payload)
        current_object = where(
            service_name: payload[:guest][:service_name],
            guest_email: payload[:guest][:guest_email]
        )

        if current_object.empty?
            object = create(payload[:guest])
            create_reservation(payload, object)
        else
            object = current_object.first
            create_reservation(payload, object)
            
        end

    end

    def self.create_reservation(payload, guest)
        payload[:reservation][:guest] = guest
        Reservation.create(payload[:reservation])
    end
end
