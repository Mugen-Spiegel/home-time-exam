class Airbnb


    def self.extract(payload)
        payload = payload["reservation"]
        formated_payload = {
            guest: extract_guest(payload),
            reservation: extract_reservation(payload),
        }
        formated_payload
    end

    def self.extract_guest(guest)
        guest_object = {
            service_name: "airbnb",
            guest_id: guest["guest_id"],
            guest_email: guest["guest_email"],
            guest_first_name: guest["guest_first_name"],
            guest_last_name: guest["guest_last_name"],
            guest_phone_numbers: guest["guest_phone_numbers"],
        }
        guest_object
    end

    def self.extract_reservation(reservation)
        reservation_object = {
            guest: '',
            total_guests:  reservation["guest_details"]["localized_description"].gsub(/[^0-9]/, ''),
            adults: reservation["guest_details"]["number_of_adults"],
            children: reservation["guest_details"]["number_of_children"],
            infants: reservation["guest_details"]["number_of_infants"],
            nights: reservation["nights"],
            end_date: reservation["end_date"],
            start_date: reservation["start_date"],
            status: reservation["status_type"],
            currency: reservation["host_currency"],
            payout_price: reservation["expected_payout_amount"],
            security_price: reservation["listing_security_price_accurate"],
            total_price: reservation["total_paid_amount_accurate"],
            original_payload: reservation,
        }
        reservation_object
    end
end
