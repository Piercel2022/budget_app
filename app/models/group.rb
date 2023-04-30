class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :user_transactions

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    amount = 0
    user_transactions.each do |transaction|
      amount += transaction.amount
    end
    amount
  end

  def icons
    JSON.parse(File.read('./icons/icons.json'))
  end
end
