require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    user = User.create! name: 'fred', email: 'fred@test.com', password: 'fred123'
    Category.create! name: 'Entertainment', user:
  end

  it 'test a record is invalid without a name' do
    expect(subject).to be_valid
    subject.name = ''
    expect(subject).to be_invalid
  end

  it 'test a record is invalid without a user' do
    expect(subject).to be_valid
    subject.user = nil
    expect(subject).to be_invalid
  end

  before { subject.save }

  it 'name presence' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
