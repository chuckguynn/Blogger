class ArticlesController < ApplicationController
before_filter :require_login, :only => [:new, :create, :edit, :update, :destroy]

def index
    @articles = Article.all
  end
def show
	@article = Article.find(params[:id])
	@comment = Comment.new
	@comment.article_id = @article.id
end

 def new
 	@article = Article.new
  end

def create
    @article = Article.new(params[:article])
    @article.save
    
flash[:message] = "Article '#{@article.title}' Created!"

    redirect_to article_path(@article)
  end

def destroy 
	@article = Article.destroy(params[:id])
  
flash[:message] = "Article '#{@article.title}' Deleted!"

    redirect_to articles_path(@articles)
end

def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])

    flash[:message] = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end  
end