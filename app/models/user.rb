class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :group_users, foreign_key: 'User_id'
  has_many :groups, through: :group_users
  has_many  :reports
  has_many :attendances

  validates :name, presence: true, length: { maximum: 6 }
end
