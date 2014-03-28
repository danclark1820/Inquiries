class ContactInquiriesController < ApplicationController

  def new
    @contact_inquiry = ContactInquiry.new
  end

  def create
    @contact_inquiry = ContactInquiry.new(inquiry_params)
    if @contact_inquiry.save
      redirect_to contact_inquiry_path(@contact_inquiry)
     # notice: "Contact Inquiry succesfully created"
    end
  end

  def show
  end

  def inquiry_params
    params.require(:contact_inquiry).permit(:email, :subject, :description, :first_name, :last_name)
  end
end
