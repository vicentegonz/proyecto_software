class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :set_comuna, only: [:new, :update, :create, :show]
  before_action :set_user, only: [:new, :update, :create, :show]
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
    @restaurant = Restaurant.new
  end

  def create
    restaurant_params = params.require(:restaurant).permit(:nombre, :valoracion, :comentar, :descripcion, :aceptado, :foto, :address, :especialidad, :cvaloracion)
    @restaurant = Restaurant.new(restaurant_params.merge(user_id: current_user.id, comuna_id: @comuna.id))

    @restaurant.comuna = @comuna
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to comuna_path(@restaurant.comuna), notice: 'Restaurant was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    restaurant_params = params.require(:restaurant).permit(:nombre, :valoracion, :comentar, :descripcion, :aceptado, :foto, :address, :especialidad, :cvaloracion)
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to comuna_restaurant_path(@restaurant.comuna.id, @restaurant), notice:'Se ha creado correctamente'
    else
      redirect_to comuna_restaurant_path(@restaurant.comuna.id, @restaurant), notice:'Ocurrio un error'
    end
  end

  def sum
    puts "hohohoho"
    $cvaloracion = params[:cvaloracion]
    $valoracion = params[:valoracion]
    #$restaurant_id = params[:id]
    puts $cvaloracion
    puts $valoracion
    puts $restaurant_id
    #restaurant = params.require(:restaurant).permit(:valoracion, :cvaloracion)
    @restaurant = Restaurant.find(params[:id])
    puts @restaurant.valoracion
    puts @restaurant.cvaloracion
    if @restaurant.valoracion.nil?
      $valoracion_final = Integer($valoracion)
    else
      $valoracion_final = Integer(@restaurant.valoracion) + Integer($valoracion)
    end
    if @restaurant.cvaloracion.nil?
      $cvaloracion_final = Integer($cvaloracion)
    else
      $cvaloracion_final = Integer(@restaurant.cvaloracion) + Integer($cvaloracion)
    end
    if @restaurant.update(valoracion: $valoracion_final, cvaloracion: $cvaloracion_final)
      redirect_to comuna_restaurant_path(@restaurant.comuna.id, @restaurant), notice:'Se ha creado correctamente'
    else
      redirect_to comuna_restaurant_path(@restaurant.comuna.id, @restaurant), notice:'Ocurrio un error'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restauran_path, notice: 'Restaurant eliminado correctamente'
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def set_comuna
    @comuna = Comuna.find(params[:comuna_id])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end

