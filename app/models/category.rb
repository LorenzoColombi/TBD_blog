class Category < ApplicationRecord
    has_many :articles, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
