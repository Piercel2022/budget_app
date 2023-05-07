require 'rails_helper'

RSpec.describe UserTransaction, type: :model do
  subject do
    UserTransaction.new(name: 'transaction name', amount: 100)
  end

  before { subject.save }

  context 'Return invalid data' do
    it 'should not accept blank name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should not accept blank amount' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end
  end
end
