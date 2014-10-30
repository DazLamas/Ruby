require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

set :bind, '0.0.0.0'

get '/' do 

	@movies_posters = []

	@movies_onpage = []

	erb :imdb
	
end


post '/posters' do 

 
	@title = params["title"]
	search = Imdb::Search.new(@title)
	@movies_list = search.movies.take(9)


	@movies_year_list = []
	@movies_onpage = []
	@movies_list.each do |movie|

		@movie_Year = movie.year

		if !(@movies_year_list.include?(@movie_Year))

		@movies_year_list << @movie_Year
		@movies_onpage << movie
		end

	end


	@year = @movies_year_list.sample

	erb :imdb


	
end