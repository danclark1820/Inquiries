class ContactInquiriesController < ApplicationController

  def new
    @contact_inquiries = ContactInquiry.new
  end

end
