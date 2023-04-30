require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'full name', email: 'name@gmail.com', password: 'password')
  end

  before { subject.save }

  context 'Return valid data' do
    it 'should accept name' do
      subject.name = 'full name'
      expect(subject).to be_valid
    end
    it 'should accept email' do
      subject.email = 'name@gmail.com'
      expect(subject).to be_valid
    end
  end

  context 'Return invalid data' do
    it 'should not accept blank email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'should not accept blank name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should not accept blank password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
