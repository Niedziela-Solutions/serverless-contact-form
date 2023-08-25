describe ContactMailer, type: :mailer do
  describe '#contact_form_submit' do
    subject(:mail) do
      described_class.contact_form_submit(
        'foo@example.com',
        'my message'
      )
    end

    it "sets the to as ENV['CONTACT_RECIPIENT']" do
      expect(mail.to).to eq([ENV.fetch('CONTACT_RECIPIENT', nil)])
    end

    it "sets the from as ENV['MAILER_FROM']" do
      expect(mail.from).to eq([ENV.fetch('MAILER_FROM', nil)])
    end

    it 'sets the subject' do
      expect(mail.subject).to eq('Contact Form Submitted')
    end

    it 'puts the email and message in the body' do
      expect(mail.body).to include('Email: foo@example.com')
      expect(mail.body).to include('Message: my message')
    end
  end
end
