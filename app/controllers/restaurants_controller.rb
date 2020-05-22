class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    restaurant_params = params.require(:restaurant).permit(:nombre, :valoracion, :comentarios, :descripcion, :cid, :uid)
    @restaurant = Restaurant.create(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_new_path, notice: "Se ha creado exitosamente "
    else
      redirect_to restaurants_new_path, notice: "No se pudo crear el restuarant"
    end
  end

  def update
    restaurant_params = params.require(:restaurant).permit(:nombre, :valoracion, :comentarios, :descripcion, :cid, :uid)
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant.id), notice:'Se ha creado correctamente'
    else
      redirect_to restaurant_path(@restaurant.id), notice:'Ocurrio un error'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, notice: 'Restaurant eliminado correctamente'
  end
end
