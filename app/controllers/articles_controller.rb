class ArticlesController < ApplicationController
    
    def index 
        # grab all articles
        @articles = Article.all
    end
    
    def new
        @article = Article.new 
    end
    # from the articles find article by ID
    def edit
        @article = Article.find(params[:id])
    end 

    def create
        @article = Article.new(article_params)
        # @article.user = current_user
        if @article.save
             flash[:success] = "Task was successfully created"
             redirect_to article_path(@article)
         else
             render 'new'
        end
    end

    def update 
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Task was successfully updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Task was successfully destroyed"
        redirect_to article_path(@article)
        
        
    end
    
    
    private 
    def article_params
        params.require(:article).permit(:title, :description)
    end
end




