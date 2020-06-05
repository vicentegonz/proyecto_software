class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comentarios, dependent: :destroy
  has_many :gustos, dependent: :destroy
  has_one_attached :foto
  has_many :restaurants, dependent: :destroy
end
