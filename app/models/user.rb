class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, foreign_key: 'author_id'
  has_many :user_transactions, foreign_key: 'author_id'
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def admin?
    role == 'admin'
  end
end
