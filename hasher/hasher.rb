require 'digest'
require 'sinatra'
require 'socket'

set :bind, '0.0.0.0'
#Openshift no permite puertos tan bajos. Cambiamos de 80 a 8080
set :port, 8080

post '/' do
    # Simulate a bit of delay
    sleep 0.1
    content_type 'text/plain'
    "#{Digest::SHA2.new().update(request.body.read)}"
end

get '/' do
    "HASHER running on #{Socket.gethostname}\n"
end

