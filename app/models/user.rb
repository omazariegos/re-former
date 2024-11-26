class User < ApplicationRecord

    validates :id, presence: true
    validates :username, presence: true
    validates :email, presence: true 
    validates :password, presence:true
end
