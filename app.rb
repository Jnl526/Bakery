require 'sinatra'
require './catalogue'
require 'sendgrid-ruby'

include SendGrid

set :bakery, @bakery

get '/' do
 erb :index
end

get '/about-us' do
    erb :about
end

get '/cakes' do 
    erb :cakes
end

get '/cookies' do
    erb :cookies
end

get '/muffins' do    
    erb :muffins
end

get '/about' do 
    erb :about
end

get '/contact' do 
    erb :contact
end

post '/' do
    @name = params[:name]
    @email = params[:email]
    
    from = Email.new(email: 'jnlblk@gmail.com')
    to = Email.new(email: @email)
    subject = 'Kassy Bakery Catalog'
    content = Content.new(type: 'text/plain', value: "Cakes: #{@cakes} \n Cookies: #{@cookies} \n Muffins: #{@muffins}")
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    
    redirect '/'

    erb :index
    
end

post '/contact' do
    @name = params[:name]
    @email = params[:email]
    @comment = params[:comment]
    
    from = Email.new(email: @email)
    to = Email.new(email: 'jnlblk@gmail.com')
    subject = 'Kassy Bakery Catalog'
    content = Content.new(type: 'text/plain', value: 'Our monthly catalogue')
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
end