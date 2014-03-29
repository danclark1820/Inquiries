require 'spec_helper'

feature "There is a link for deleting an Inquiry", %q{
  As an admin
  I want to delete an inquiry
  So that I can remove spam or other undesirable inquiries
  } do

  #Acceptance criteria:
  # * I can remove an item from the listing of contact inquiries
  context "as an admin" do
    it "has a link to delete an inquiry" do
      visit '/contact_inquiries/new'

        fill_in "Email", with: "mike@boerger.com"
        fill_in "Subject", with: "Curiosity"
        fill_in "Description", with: "I have a question"
        fill_in "First Name", with: "Mike"
        fill_in "Last Name", with: "Boerger"
        click_on "Create Contact Inquiry"

      visit '/contact_inquiries' do
        first('.item').click_link('Delete')
        expect(page).to have_content "Inquiry was succesfully deleted"
      end
    end
  end
end
