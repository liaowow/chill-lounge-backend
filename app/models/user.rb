class User < ApplicationRecord
    has_secure_password
    has_many :results
    has_many :boards
end
