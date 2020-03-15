class User < ApplicationRecord
    has_many :results
    has_many :boards
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
end
