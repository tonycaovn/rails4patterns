class ItemsController < ApplicationController
   def index
     @items = Item.featured
   end
 end
