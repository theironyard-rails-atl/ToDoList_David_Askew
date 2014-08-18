class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def create
    item = Item.new
    item.list_id = params[:list_id]
    item.name = params[:name]
    item.checked = false
    #item.due_datetime = params[:due_datetime]
    year   = params[:date][:year]
    month  = params[:date][:month]
    day    = params[:date][:day]
    hour   = params[:date][:hour]
    minute = params[:date][:minute]

    item.due_datetime = Time.new(year,month,day,hour,minute)
    item.save!
    #puts params
    redirect_to list_path(item.list_id)
  end

end
