class Restaurant < ApplicationRecord
  validates_uniqueness_of :nombre
  belongs_to :comuna
  has_one :user
  has_many :meetings, dependent: :destroy
  has_many :comentarios, dependent: :destroy
  has_one_attached :foto
end
