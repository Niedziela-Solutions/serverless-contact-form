class ContactController < ApplicationController
  def create
    if params[:email].present?
      ContactMailer.contact_form_submit(
        params[:email],
        params[:message]
      ).deliver_now
    end

    render json: { action: :create }
  end
end
