class Meeting < ApplicationRecord
    has_one :restaurant
    has_and_belongs_to_many :users
end
