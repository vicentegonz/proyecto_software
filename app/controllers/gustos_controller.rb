class GustosController < ApplicationController
  before_action :set_gusto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

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
    @gusto = Gusto.new(gusto_params)
    @gusto.user = current_user
    respond_to do |format|
      if @gusto.save
        format.html { redirect_to user_gustos_path(:user_id), notice: 'Gusto was successfully created.'}
      else
        format.html { render :new }
        format.json { render json: @gusto.errors, status: :unprocessable_entity }
      end
    end
  end



    #gusto_params = params.require(:gusto).permit(:nombre, :descripcion, :user_id)
    #@gusto = Gusto.create(gusto_params)

    #if @gusto.save
      #redirect_to gustos_new_path, notice: 'Gusto creado exitosamente.'

    #else
      #redirect_to gustos_new_path, notice: 'No se pudo crear el gusto.'
    #end
  #end

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

  private
    def set_gusto

      @gusto = Gusto.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def gusto_params
      params.require(:gusto).permit(:nombre, :descripcion, :user_id)
    end
end
