get '/' do
  @items = Item.order(:position)
  erb :index
end

post '/update_order' do
  params[:ids].each_with_index do |id, index|
    Item.update(id.to_s, :position => (index + 1) )
  end
end
