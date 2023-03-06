class ContactMailer < ApplicationMailer
  def contact_form_submit(email:, message:)
    @email = email
    @message = message

    mail(
      to: ENV.fetch('CONTACT_RECIPIENT', nil),
      subject: 'Contact Form Submitted'
    )
  end
end
