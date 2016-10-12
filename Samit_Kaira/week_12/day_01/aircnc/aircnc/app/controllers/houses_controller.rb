class HousesController < ApplicationController
before_action :authorise, :only => [:edit, :show]

  def index
    @houses = House.all

    #SEARCH
    if params[:search]
      @houses = House.search(params[:search]).order("created_at DESC")
    else
      @houses = House.all.order('created_at DESC')
    end

    #RENDERING ALL BOOKINGS FOR THE PURPOSES OF DEVELOPMENT ONLY
    respond_to do |f|
      f.html {}
      f.json { render json: @houses.to_json(include: :bookings)}
    end
  end

  def show
    @house = House.find(params[:id])
    @user = @current_user
    @comment = Comment.new
    @booking = Booking.new
    respond_to do |f|
      f.html {}
      f.json { render json: @house.to_json(include: :bookings)}
    end
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create(house_params)
    @house.save
    redirect_to "/houses"
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    house = House.find(params[:id])
    house.update(house_params)
    redirect_to "/houses/#{house.id}"
  end


  def destroy
    house = House.find(params[:id])
    house.destroy
    redirect_to "/houses"
  end

private
  def house_params
    params.require(:house).permit(:name, :address, :blurb, :about, :availability, :city, :owner, :price, :amenities, :house_rules, :image1, :image2, :image3, :image4, :image5, :latitude, :longitude)
  end

  def authorise
    flash[:error] = "You need to be logged in to see that" unless @current_user.present?
    redirect_to login_path unless @current_user.present?
  end
end
