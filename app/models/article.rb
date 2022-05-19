class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    belongs_to :categories, optional: true
    belongs_to :user

    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { minimum: 10, maximum: 300 }
    validates :category_id, presence: true

end
