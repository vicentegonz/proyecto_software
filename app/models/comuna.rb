class Comuna < ApplicationRecord
    has_many :restaurants
    has_many :users
end
