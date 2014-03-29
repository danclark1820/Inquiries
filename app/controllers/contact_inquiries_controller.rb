class ContactInquiriesController < ApplicationController

  def index
    @contact_inquiries = ContactInquiry.all
  end

  def show
    @contact_inquiry = ContactInquiry.find(params[:id])
  end

  def new
    @contact_inquiry = ContactInquiry.new
  end

  def create
    @contact_inquiry = ContactInquiry.new(inquiry_params)
    if @contact_inquiry.save
      redirect_to contact_inquiry_path(@contact_inquiry)
      flash[:notice] = "Inquiry was succesfully created"
    else
      redirect_to new_contact_inquiry_path
      flash[:notice] = "Please fill out required fields"
    end
  end

  def edit
    @contact_inquiry = ContactInquiry.new(inquiry_params)
  end

  def inquiry_params
    params.require(:contact_inquiry).permit(:email, :subject, :description, :first_name, :last_name)
  end
end
