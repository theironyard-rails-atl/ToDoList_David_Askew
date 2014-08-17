class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def create
    item = Item.new
    item.list_id = params[:list_id]
    item.name = params[:name]
    item.checked = false
    item.due_datetime = params[:due_datetime]
    item.save!
    redirect_to list_path(item.list_id)
  end

end
