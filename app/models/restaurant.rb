class Restaurant < ApplicationRecord
    belongs_to :comuna foreign_key: cid
    has_one :user
end
