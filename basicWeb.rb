require 'sinatra'
# Generador de Invitaciones a eventos, incluyendo formulario , seleccion plantilla, generacion invitacion, generacion de URL unica para cada invitación.

get '/' do
  erb :intro
end

# post '/' do
#   erb :Amarillos
#   # "Quedan invitados por #{params[:Personaresponsable]} a ... #{params[:Nombreevento]} (#{params[:Informaciongeneral]}) ... que tendrá lugar en #{params[:Donde]} el día '#{params[:Cuando]}'. ¡No faltes!"
# end

get '/invitacion' do
  if params[:template] == "Grises" then
    erb :Grises
  elsif params[:template] == "Verdes" then
    erb :Verdes
  else
    erb :Amarillos
  end
end

# get '/invitacion/:color' do
#   erb params[:color].to_sym
# end
