class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    if @article.category_id != nil then
      @category = Category.find(@article.category_id)
    else
      @category = Category.new
      @category.name = "No category"
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    print("XXX")
    print(@article.category_id)

    if @article.save
      redirect_to @article
      print("SAVED")
    else
      print("NOT SAVED")
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  
    #Non-standard methon (or maybe method that are in the wrong place)
    def search
      @articles = Article.search(params[:query])

      render "result"
   end
      

  private
    def article_params
      params.require(:article).permit(:title, :body, :status, :category_id)
    end
end
