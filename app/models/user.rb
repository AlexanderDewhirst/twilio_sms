class User < ApplicationRecord
    has_secure_password

    validates :email, :phone, presence: true
end
