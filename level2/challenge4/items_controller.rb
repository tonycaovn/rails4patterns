class ItemsController < ApplicaitonController
  def index
    @items = Item.by_name(params[:name]).recent
  end
end