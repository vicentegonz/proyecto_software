class CuentaController < ApplicationController
    
    def eliminar_cuenta
        @cuenta = Cuenta.find(params[:id])
        @cuenta.destroy
        redirect_to welcome_path, notice: 'Cuenta eliminado correctamente'
    end
    def edit
        @user = User.find(current_user.id)
        puts @user.nombre
        puts current_user.id
      end
    def update
    puts "primeeer holaaaaaa"
    
    cuenta_params = params.require(:user).permit(:nombre, :apellidos, :username, :email, :sexo, :tipo)
    puts "segunso gollaaaaa"
    puts cuenta_params
    @user = User.find(current_user.id)
    
    

    if @user.update(cuenta_params)
        puts "holaaaa"
        redirect_to cuenta_path, notice:'Se ha creado correctamente'
    else
        redirect_to cuenta_path, notice:'Ocurrio un error'
    end
    end
end
