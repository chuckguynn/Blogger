class TagsController < ApplicationController
  def index
    
    @tag = Tag.find(params[:id])
  end


  def show
    @tag = Tag.find(params[:id])
  end

 
end
