class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = List.where(user_id: current_user)
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    list = List.new
    list.title = params[:title]
    list.description = params[:description]
    list.user_id = current_user.id
    list.save!
    redirect_to lists_path
  end

end
