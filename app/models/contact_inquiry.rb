class ContactInquiry < ActiveRecord::Base
  validates :email, presence: true
  validates :subject, presence:true
  validates :description, presence:true
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
end
