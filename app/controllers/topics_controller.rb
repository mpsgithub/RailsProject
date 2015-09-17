class TopicsController < ApplicationController
	def index
		@topic = Topic.first
	end	

	def show
		render "math"
	end
end	