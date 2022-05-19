class User < ApplicationRecord
    has_many :articles, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :email, length: { minimum: 3, maximum: 50 }
    validates :surname, length: { minimum: 3, maximum: 50 }
    validates :password, presence: true, length: { minimum: 6, maximum: 50 }

end
