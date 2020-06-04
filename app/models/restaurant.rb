class Restaurant < ApplicationRecord
    validates_uniqueness_of :nombre
    belongs_to :comuna 
    has_one :user
    has_many :meetings
    has_many :comentarios
end
