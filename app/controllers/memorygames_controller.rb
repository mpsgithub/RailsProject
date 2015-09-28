class MemorygamesController < ApplicationController
	def show
		@topic = Topic.find(params[:id])
		@name = @topic.name
	end
end