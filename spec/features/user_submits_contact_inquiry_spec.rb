require 'spec_helper'

feature "User submits contact inquiry", %q{
  As a user
  I want to create an issue
  So that I can track the progress of the issue
} do

#Acceptance Criteria:
# * I must specify a valid email address
# * I must specify a subject
# * I must specify a first name
# * I must specify a last nameri

  context "with valid attributes" do
    it "creates an issue with valid attributes" do
      visit '/contact_inquiries/new'

      fill_in "Email", with: "mike@boerger.com"
      fill_in "Subject", with: "Curiosity"
      fill_in "Description", with: "I have a question"
      fill_in "First Name", with: "Mike"
      fill_in "Last Name", with: "Boerger"

      click_on "Create Contact Inquiry"

      expect(page).to have_content "Inquiry was succesfully created"
    end
  end

  context "with invalid attributes" do
    it "sees errors for invalid attributes"
  end
end
