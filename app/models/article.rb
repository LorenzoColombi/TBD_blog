class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { minimum: 10, maximum: 300 }

end
