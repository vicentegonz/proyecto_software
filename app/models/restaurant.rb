class Restaurant < ApplicationRecord
    belongs_to :comuna 
    has_one :user
    has_many :meetings
    has_many :comentarios
end
