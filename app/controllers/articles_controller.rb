class ArticlesController < ApplicationController
    def new
        @article = Article.new 
    end
    
    ######################################################

    def create
        @article = Article.new(article_params)
        # @article.user = current_user
        if @article.save
             flash[:success] = "Article was successfully created"
             redirect_to article_path(@article)
         else
             render 'new'
        end
    end
    ######################################################   
    
    private 
    def article_params
        params.require(:article).permit(:title, :description)
    end
end




