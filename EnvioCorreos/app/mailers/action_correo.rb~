class ActionCorreo < ApplicationMailer

	def bienviendo_email(user)
	@user = user
	
	mail(to: @user.email, subject : 'HOla mundo')
	end
	def enviarCorreo
  #Creamos el usuario
  	@persona1 = Persona.create({ nombre: 'Roberto', email: 'aramu.robert92.com',email_confirmation: 'aramu.robert92.com"', 		identificador: "123456789", sexo: 'm', telefono: '123456789123' })

  # Llamamos al   ActionMailer que creamos
  	ActionCorreo.bienvenido_email(@persona1).deliver

  # mostramos el usuario en formato JSON
  	render json: @persona1
	end
end
