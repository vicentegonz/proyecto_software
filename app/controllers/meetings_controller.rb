class MeetingsController < ApplicationController
  attr_accessor :id_user2
   
  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def create
    meeting_params = params.require(:meeting).permit(:restaurant_id)
    if Meeting.exists?(usuario1: $id_user2 , usuario2: current_user.id, check: 0)
      @meeting = Meeting.create(meeting_params.merge(usuario1: current_user.id, usuario2: $id_user2,check:1))
      
    else
      @meeting = Meeting.create(meeting_params.merge(usuario1: current_user.id, usuario2: $id_user2,check:0))
      
    end

    if @meeting.save
      redirect_to welcome_path, notice: 'Cita creada exitosamente.'
    else
      redirect_to welcome_path, notice: 'No se pudo crear la cita.'
    end
  end

  def new
    $id_user2 = params[:id_user2]
    puts @id_user2
    @meetings = Meeting.new()
    
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    meeting_params = params.require(:meeting).permit(:usuario1, :usuario2, :rid)
    @meeting = Meeting.find(params[:id])
    
    if @meeting.update(meeting_params)
      redirect_to meeting_path(@meeting.id), notice: 'Cita editada con éxito'
    else
      redirecto_to meeting_path(@meeting.id), notice: 'Ocurrió un error al editar la cita'
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to meetings_path, notice: ' Cita eliminada con éxito'
  end



end
