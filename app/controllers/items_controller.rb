class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def delete
  end

  def destroy
  	@item = Item.where("id = ?", params[:id])
  	@item[0].destroy
  	redirect_to '/'
  end
end
