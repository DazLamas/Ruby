require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

set :bind, '0.0.0.0'

get '/' do 

	@movies_posters = []

	erb :imdb
	
end


post '/posters' do 

 
	@title = params["title"]
	@search = Imdb::Search.new(@title)
	@movies_list = @search.movies.take(9)
	@movies_posters = @movies_list.map  do |element|

		element.poster

	end

	@movies_year = @movies_list.year
	@movies_year.sample

	erb :imdb
	
end



#[1,2,3,4].sample
#javascript front respuesta