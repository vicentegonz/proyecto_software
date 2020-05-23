class ComentariosController < ApplicationController
  def new
    @comentario = Comentario.new
  end

  def index
    @comentarios = Comentario.all
  end

  def create
    comentario_params = params.require(:comentario).permit(:contenido, :restaurant_id, :user_id)
    @comentario = Comentario.create(comentario_params)

    if @comentario.save
      redirect_to comentarios_new_path, notice: 'Comentario creado exitosamente.'

    else
      redirect_to comentarios_new_path, notice: 'No se pudo crear el comentario.'
    end
  end

  def show
    @comentario = Comentario.find(params[:id])
  end

  def edit
    @comentario = Comentario.find(params[:id])
  end

  def update
    comentario_params = params.require(:comentario).permit(:contenido, :rid, :uid)
    @comentario = Comentario.find(params[:id])
    puts @comentario.contenido
    if @comentario.update(comentario_params)
      redirect_to comentario_path(@comentario.id), notice: 'Comentario editado con éxito'
      puts @comentario.contenido

    else
      redirecto_to comentario_path(@comentario.id), notice: 'Ocurrió un error al editar el comentario'
    end
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    redirect_to comentarios_path, notice: 'Comentario eliminado con éxito'
  end

end
