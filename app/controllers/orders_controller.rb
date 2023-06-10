class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.includes(:user)
    @item = @items.first
  end

  def create
  end

end
