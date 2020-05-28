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
        format.html { redirect_to restaurant_path(@restaurant.id), notice: 'Comentario was successfully created.'}
      else
        format.html { render :new }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

    #if @comentario.save
    #  redirect_to comentarios_new_path, notice: 'Comentario creado exitosamente.'

    #else
    #  redirect_to comentarios_new_path, notice: 'No se pudo crear el comentario.'
    #end
  #end

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
      redirect_to restaurant_comentarios_path, notice: 'Comentario editado con éxito'
      puts @comentario.contenido

    else
      redirecto_to restaurant_comentarios_path, notice: 'Ocurrió un error al editar el comentario'
    end
  end

  def destroy
    @comentario.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_comentarios_path(:restaurant_id), notice: 'Comentario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

# Acá hay código que me salté

  private
    # Use callbacks to share common setup or constraints between actions.
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
