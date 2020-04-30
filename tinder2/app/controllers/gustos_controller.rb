class GustosController < ApplicationController
  def index
    @gustos = Gusto.all
  end

  def show
    @gusto = Gusto.find(params[:id])
  end

  def new
    @gusto = Gusto.new
  end

  def create
    gusto_params = params.require(:gusto).permit(:nombre, :descripcion)
    @gusto = Gusto.create(gusto_params)

    if @gusto.save
      redirect_to gustos_new_path, notice: 'Gusto creado exitosamente.'

    else
      redirect_to gustos_new_path, notice: 'No se pudo crear el gusto.'
    
    end
  end

  

  def edit
    @gusto = Gusto.find(params[:id])
  end

  def update
    gusto_params = params.require(:gusto).permit(:nombre, :descripcion)
    @gusto = Gusto.find(params[:id])

    if @gusto.update(gusto_params)
      redirect_to gusto_path(@gusto.id), notice: 'Gusto editado con éxito'

    else
      redirecto_to gusto_path(@gusto.id), notice: 'Ocurrió un error al editar el gusto'
      
    end
  end

  def destroy
    @gusto = Gusto.find(params[:id])
    @gusto.destroy
    redirect_to gustos_path, notice: ' Gusto eliminado con éxito'
  end
end
