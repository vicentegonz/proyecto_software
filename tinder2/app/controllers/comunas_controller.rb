class ComunasController < ApplicationController
  def new
    @comunas = Comuna.new
  end

  def create
    comuna_params = params.require(:comuna).permit(:nombre)
    @comuna = Comuna.create(comuna_params)

    if @comuna.save
      redirect_to comunas_new_path, notice: "Se ha creado exitosamente "
    else
      redirect_to comunas_new_path, notice: "No se pudo crear la comuna"
    end
  end

  def index
    @comunas = Comuna.all
  end

  def show
    @comuna = Comuna.find(params[:id])
  end

  def edit
    @comuna = Comuna.find(params[:id])
  end

  def update
    comuna_params = params.require(:comuna).permit(:nombre)
    @comuna = Comuna.find(params[:id])

    if @comuna.update(comuna_params)
      redirect_to comuna_path(@comuna.id), notice:'Comuna editada con exito'
    else
      redirect_to comuna_path(@comuna.id), notice:'Ocurrio un error'
    end
  end

  def destroy
    @comuna = Comuna.find(params[:id])
    @comuna.destroy
    redirect_to comunas_path, notice: 'Comuna eliminada correctamente'
  end
end
