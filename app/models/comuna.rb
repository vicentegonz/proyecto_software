class Comuna < ApplicationRecord
    has_many :restaurants, dependent: :destroy
    validates_uniqueness_of :nombre
end
