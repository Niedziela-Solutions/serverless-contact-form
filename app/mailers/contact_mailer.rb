class ContactMailer < ApplicationMailer
  def contact_form_submit(email:, message:)
    @email = email
    @message = message

    mail(
      to: ENV['CONTACT_RECIPIENT'],
      subject: 'Contact Form Submitted'
    )
  end
end
