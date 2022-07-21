class AppointmentMailer < ApplicationMailer
    default :from => ENV["R_EMAIL"]
            # :bcc => [""]

    def appointment_confirmation_email(appointment)
        @appointment = appointment
        @url = "https://rubyonrails.org/"
        mail(:to => appointment.email, :subject => "Confirmation from LCW Exteriors")
    end
end
