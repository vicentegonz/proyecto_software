class CuentaController < ApplicationController
  def destroy
    @cuenta = Cuenta.find(current_user.id)
    @cuenta.destroy
    redirect_to root_path, notice: 'Cuenta eliminada correctamente'
  end

  def edit
    @user = User.find(current_user.id)
    puts @user.nombre
    puts current_user.id
  end

  def update
    cuenta_params = params.require(:user).permit(:nombre, :apellidos, :username, :email, :sexo, :tipo, :contacto, :comuna)
    @user = User.find(current_user.id)
    if @user.update(cuenta_params)
      puts "holaaaa"
      redirect_to cuenta_path, notice:'Se ha creado correctamente'
    else
      redirect_to cuenta_path, notice:'Ocurrio un error'
    end
  end
end