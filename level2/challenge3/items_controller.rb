class ItemsController < ApplicationController
  def index
    @items = Item.where('rating > ? AND published_on > ?', 5, 2.days.ago)
  end
end