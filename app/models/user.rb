class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_uniqueness_of :username
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comentarios
  has_many :gustos
  has_many :meetings
  belongs_to :comuna
  has_one_attached :foto
  has_many :restaurants

end
