class Comentario < ApplicationRecord
    belongs_to :user foreign_key: uid
    has_one :restaurant
end
