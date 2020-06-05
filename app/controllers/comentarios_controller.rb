class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurant, only: [:new, :update, :create, :show]
  def new
    @comentario = Comentario.new
  end

  def index
    @comentarios = Comentario.all
  end

  def create
    @comentario = Comentario.new(comentario_params.merge(restaurant_id: @restaurant.id, user_id: current_user.id))
    @comentario.restaurant = @restaurant
    respond_to do |format|
      if @comentario.save
        format.html { redirect_to comuna_restaurant_path(@restaurant.comuna_id, @restaurant.id), notice: 'Comentario was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @comentario = Comentario.find(params[:id])
  end

  def edit
    @comentario = Comentario.find(params[:id])
  end

  def update
    @comentario = Comentario.find(params[:id])
    puts @comentario.contenido
    if @comentario.update(comentario_params)
      redirect_to comuna_restaurant_path(@comentario.restaurant.comuna_id, @comentario.restaurant_id), notice: 'Comentario editado con éxito'
      puts @comentario.contenido
    else
      redirecto_to comuna_restaurant_path(@comentario.restaurant.comuna_id, @comentario.restaurant_id), notice: 'Ocurrió un error al editar el comentario'
    end
  end

  def destroy
    @comentario.destroy
    respond_to do |format|
      format.html { redirect_to comuna_restaurant_path(@comentario.restaurant.comuna_id, @comentario.restaurant_id), notice: 'Comentario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_comentario
    @comentario = Comentario.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def comentario_params
    params.require(:comentario).permit(:contenido)
  end
end
