require 'spec_helper'

describe ContactInquiry do
  let(:valid_attrs){{
    email:       'mike@boerger.com',
    subject:     'Inquiring!',
    description: 'I would like to inquire about a fish game',
    first_name:  'Mike',
    last_name:   'Boerger'
  }}
  it 'has an email' do
    inquiry = ContactInquiry.new(valid_attrs.merge(email: ''))
    expect(inquiry).to_not be_valid
    expect(inquiry.errors[:email]).to include "can't be blank"
  end

  it 'has a subject' do
    inquiry = ContactInquiry.new(valid_attrs.merge(subject: ''))
    expect(inquiry).to_not be_valid
    expect(inquiry.errors[:subject]).to include "can't be blank"
  end

  it 'has a description' do
    inquiry = ContactInquiry.new(valid_attrs.merge(description: ''))
    expect(inquiry).to_not be_valid
    expect(inquiry.errors[:description]).to include "can't be blank"
  end

  it 'has a first name' do
    inquiry = ContactInquiry.new(valid_attrs.merge(first_name: ''))
    expect(inquiry).to_not be_valid
    expect(inquiry.errors[:first_name]).to include "can't be blank"
  end

  it 'has a last name' do
    inquiry = ContactInquiry.new(valid_attrs.merge(last_name: ''))
    expect(inquiry).to_not be_valid
    expect(inquiry.errors[:last_name]).to include "can't be blank"
  end
end
