class User < ApplicationRecord
    has_many :articles, dependent: :destroy
    has_many :works
    has_many :places, through: :works

    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :email, length: { minimum: 3, maximum: 50 }
    validates :surname, length: { minimum: 3, maximum: 50 }
    validates :password, presence: true, length: { minimum: 6, maximum: 50 }

    
end