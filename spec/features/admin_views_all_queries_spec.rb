require 'spec_helper'

feature "There is a page for viewing all inquiries", %q{
  As an admin
  I want to review contact inquiries
  So that I can respond or take action
  } do

  #Acceptance criteria:
  # * I can see a list of contact inquiries
  context "as an admin" do
    it "shows a all the inquiries" do
      visit '/contact_inquiries' do
      expect(page).to have_content "Inquiry Index"
      end
    end
  end
end
