require_relative 'config/environment'

class App < Sinatra::Base



    get '/' do 
        erb :index 
    end 

    get '/new' do 
        erb :create_puppy
    end 

    post '/puppy' do 
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        erb :display_puppy
    end 

end



# post '/piglatinize' do 
#     @text_from_user = params[:user_phrase]
#     @pig_lantinized_text = PigLatinizer.new
#     erb :user_output
# end