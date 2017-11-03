class RestaurantsController < ApplicationController

  RESTAURANTS = [
    { name: "Dishomm", address: "Shoreditch, London", category: "indian"},
    { name: "The Dove", address: "Hammersmith, London", category: "pub"}
  ]

  def index
    @category = params[:food_type]
    if @category
      @restaurants = RESTAURANTS.select {|r| r[:category] == @category }
    else
      @restaurants = RESTAURANTS
    end
  end

  def create

    # WITH ACTIVE RECORD
    # restaurant = Restaurant.new(name: params[:name], adrress: params[:adrress])
    # restaurant.save
    render plain: "Restaurant #{params[:name]} should be created"
  end

  def show
    id = params[:id].to_i
    @restaurant = RESTAURANTS[id]
    p @restaurant

    # WITH ACTIVE RECORD
    # @restaurant = Restaurant.find(params[:id])
  end

end
