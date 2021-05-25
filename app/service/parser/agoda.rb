class Agoda
    

    def self.extract(payload)
        payload = {
            guest: extract_guest(payload),
            reservation: extract_reservation(payload),
        }
        payload
    end

    def self.extract_guest(guest)
        guest_object = {
            service_name: "agoda",
            guest_id: guest["guest"]["id"],
            guest_email: guest["guest"]["email"],
            guest_first_name: guest["guest"]["first_name"],
            guest_last_name: guest["guest"]["last_name"],
            guest_phone_numbers: guest["guest"]["phone"],
        }
        guest_object
    end

    def self.extract_reservation(reservation)
        reservation_object = {
            guest: '',
            total_guests:  reservation["guests"],
            adults: reservation["adults"],
            children: reservation["children"],
            infants: reservation["infants"],
            nights: reservation["nights"],
            end_date: reservation["end_date"],
            start_date: reservation["start_date"],
            status: reservation["status"],
            currency: reservation["currency"],
            payout_price: reservation["payout_price"],
            security_price: reservation["security_price"],
            total_price: reservation["total_price"],
            original_payload: reservation,
        }
        reservation_object
    end
end
