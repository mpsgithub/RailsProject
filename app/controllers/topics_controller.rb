class TopicsController < ApplicationController
	def index
		@topic = Topic.first
	end	
end	