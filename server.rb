require "sinatra"
require "sinatra/reloader"
require "artii"




get "/ascii/:word" do
	@word = params[:word]
	a = Artii::Base.new
	@word = a.asciify(@word)
	erb(:word)
end