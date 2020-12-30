describe ContactController, type: :controller do
  describe 'POST #create' do
    it 'index returns a success response' do
      post '/contact'

      expect(response.status).to eq(200)
    end

    it 'calls contact mailer if email present' do
      expect(ContactMailer).to receive(:contact_form_submit).with(
        email: 'foo@example.com',
        message: 'test'
      ).and_return(double(deliver_now: nil))

      post '/contact', params: { email: 'foo@example.com', message: 'test' }

      expect(response.status).to eq(200)
    end

    it 'does not call contact mailer if not email present' do
      expect(ContactMailer).to_not receive(:contact_form_submit)

      post '/contact', params: { email: '', message: 'test' }

      expect(response.status).to eq(200)
    end
  end
end
