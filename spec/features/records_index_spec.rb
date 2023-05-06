require 'rails_helper'

RSpec.describe 'Transaction Page Features', type: :feature do
  before(:each) do
    visit user_session_path
    user1 = User.create!(
      name: 'mike', email: 'mike@gmail.com', password: 'mike123'
    )
    fill_in 'Email', with: 'mike@gmail.com'
    fill_in 'Password', with: 'mike123'
    click_button 'Log in'

    category1 = user1.categories.new(name: 'Safari')
    category1.image.attach(
      io: File.open(Rails.root.join('spec', 'img', 'safari.png')),
      filename: 'safari.png',
      content_type: 'application/png'
    )
    category1.save!
    visit category_path(category1)
  end

  describe 'I can see' do
    it 'the title of the page' do
      expect(page).to have_content 'CATEGORY DETAILS'
    end

    it 'the title of the page' do
      expect(page).to have_content 'TOTAL PAYMENT'
    end

    it 'the name of the category' do
      expect(page).to have_content 'Safari'
    end

    it 'should see total amount of transactions' do
      expect(page).to have_content '$0.0'
    end

    it 'the title of the transaction' do
      expect(page).to have_content 'List of transaction'
    end
  end
end
