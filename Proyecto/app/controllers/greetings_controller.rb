class GreetingsController < ApplicationController
  def hello
    @message = "Hello world!"
    @items = [1, 2, 3]
    #tiene el nombre de la vista
    render 'hello'
  end

  def square
    @value = params[:input].to_i
    @square = @value*@value
    render 'square'
  end

  def multiplicacion
    @value1 = params[:input1].to_i
    @value2 = params[:input2].to_i
    @multiplicacion = @value1 * @value2
    render 'multiplicacion'
  end
end
