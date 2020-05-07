class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def create
    meeting_params = params.require(:meeting).permit(:usuario1, :usuario2, :rid)
    @meeting = Meeting.create(meeting_params)

    if @meeting.save
      redirect_to meetings_new_path, notice: 'Cita creada exitosamente.'

    else
      redirect_to meetings_new_path, notice: 'No se pudo crear la cita.'
    
    end
  end

  def new
    @meetings = Meeting.new
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end


  def update
    meeting_params = params.require(:meeting).permit(:usuario1, :usuario2)
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
