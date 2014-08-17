class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    list = List.new
    list.title = params[:title]
    list.description = params[:description]
    list.save!
    redirect_to lists_path
  end

end
