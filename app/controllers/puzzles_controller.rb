class PuzzlesController < ApplicationController
	def show
		@id = params[:id]
		@topic = Topic.find(params[:id])
		@name = @topic.name
		@puzzle= Puzzle.find_by(topic_id: params[:id])
	end
end