class CuentaController < ApplicationController
  def destroy
    $id_user2 = params[:id_user]
    @cuenta = User.find($id_user2)
    @usuario = @cuenta
    if @usuario.id == current_user.id
      @cuenta.destroy
      redirect_to root_path, notice: 'Cuenta eliminada correctamente'
    else
      @cuenta.destroy
      redirect_to chao_path, notice: 'Cuenta eliminada correctamente'
    end
  end

  def edit
    puts current_user.id
    @user = User.find(current_user.id)
    puts @user.nombre
    puts current_user.id
  end

  def update
    cuenta_params = params.require(:user).permit(:nombre, :apellidos, :username, :email, :sexo, :tipo, :contacto, :comuna, :edad, :descripcion, :foto)
    @user = User.find(current_user.id)
    puts @user.edad
    if @user.update(cuenta_params)
      puts "holaaaa"
      redirect_to cuenta_taste_path, notice:'Se ha creado correctamente'
    else
      redirect_to cuenta_gustos_path, notice:'Ocurrio un error'
    end
  end

  def show
    @user = User.find(current_user.id)
  end

  def delete
    $id_user2 = params[:id_user]
    puts $id_user2
    @cuenta = User.find($id_user2)
  end
end