class GamesController < ApplicationController
	def index
		@id = params[:id]
		@topic = Topic.find(params[:id])
		@name = @topic.name
	end
end