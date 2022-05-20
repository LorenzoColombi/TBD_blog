class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    belongs_to :category, optional: true
    belongs_to :user, optional: true

    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { minimum: 10, maximum: 300 }
    validates :category_id, presence: true
    
    def self.search(category_name)
        @articles = Article.joins(:category).where("categories.name = ?", category_name)
        #categories = Category.where(name: category_name)
       # @articles = Article.where(category_id: categories.ids)
        return @articles
        
    end
    


end
