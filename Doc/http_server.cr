require 'http/server'

server = HPPT::Server.new do |context|
    context.response.content_type = "text/plain"
    context.response.print "Hello Word! The time is #{Time.local}"
end

address = server.bind_tcp 8080
puts "Listening on http://#{address}"
server.listen